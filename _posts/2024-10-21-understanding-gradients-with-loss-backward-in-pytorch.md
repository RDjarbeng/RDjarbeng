---
title: Understanding Gradients with loss.backward() in PyTorch
date: 2024-10-21T13:00:00
author: Richard
image: /assets/images/math_science.jpeg
video: ""
layout: post
---

In this post, let us take a closer look at how gradients are calculated in PyTorch, particularly focusing on the interaction between the `loss.backward()` function and a variable’s `.grad` attribute. If you've ever wondered how PyTorch handles gradients under the hood or why specific operations return the gradients as they do, then this post is for you.
![man holding glowing test tube background with math equations ]({{ site.baseurl }}/assets/images/math_science.jpeg)

## Setting the Scene

Suppose you have a simple machine learning model where you want to calculate a loss and backpropagate to adjust the parameters. Let's take a look at an example:

```python
import torch

# Function to calculate predictions
def calc_preds(params, inputs): 
    return (inputs * params).sum(axis=1)

# Function to calculate the Mean Absolute Error (MAE)
def calc_loss(params, inputs, targets): 
    return torch.abs(calc_preds(params, inputs) - targets).mean()

# Sample data (features and target)
inputs = torch.rand(1000, 10)  # Input features
targets = torch.rand(1000)     # Target variable

# Model parameters initialized randomly
params = torch.rand(10, requires_grad=True)

# Calculate the loss
loss = calc_loss(params, inputs, targets)

# Backpropagate to compute gradients
loss.backward()

# Check the gradients for params
print(params.grad)
```
In this example:
- We have a set of input features (`inputs`).
- We have a set of target values (`targets`), which represent the ground truth.
- `params` are the model parameters (coefficients) we're trying to optimize.
- The loss function is the **Mean Absolute Error (MAE)**.

After calling `loss.backward()`, the gradients are stored in `params.grad`.

## How Does `loss.backward()` Affect `params.grad`?
This is a crucial question: How does calling `loss.backward()` affect the `params.grad`?

When we compute the loss, we calculate how far off our model's predictions are from the target values. Calling `loss.backward()` triggers the backpropagation process, which computes the gradients of the loss **with respect to each parameter** involved in the calculation — in this case, the `params`.

PyTorch tracks the operations performed on `params` and uses the chain of derivatives to calculate how much each element of `params` should change to reduce the loss.

## Breaking Down Gradient Calculation
Let's break it down into steps:

1. **Predictions**: First, we calculate the predictions using the current `params`:
   $$ \text{preds}_i = \sum_j (\text{inputs}_{ij} \cdot \text{params}_j) $$
   This gives us the predicted values for each sample based on the current parameter values.

2. **Loss**: We then calculate the **Mean Absolute Error (MAE)**:
   $$ \text{loss} = \frac{1}{N} \sum_i \left| \text{preds}_i - \text{targets}_i \right| $$
   where \( N \) is the number of samples.

3. **Gradient of MAE**: The derivative of the MAE with respect to each prediction is given by:
   $$ \frac{\partial \text{loss}}{\partial \text{preds}_i} = \frac{1}{N} \cdot \text{sign}(\text{preds}_i - \text{targets}_i) $$
   This is because the derivative of the absolute value function \( |x| \) is \( \text{sign}(x) \), where:
   $$ \text{sign}(x) = 
   \begin{cases} 
   1 & \text{if } x > 0 \\ 
   -1 & \text{if } x < 0 \\ 
   0 & \text{if } x = 0 
   \end{cases} $$

4. **Chain Rule**: Using the chain rule, we propagate this gradient back to the parameters:
   $$ \frac{\partial \text{loss}}{\partial \text{params}_j} = \sum_i \frac{\partial \text{loss}}{\partial \text{preds}_i} \cdot \frac{\partial \text{preds}_i}{\partial \text{params}_j} $$
   Here, \( \frac{\partial \text{preds}_i}{\partial \text{params}_j} = \text{inputs}_{ij} \), since each prediction is a linear combination of the input features and the parameters.

5. **Final Gradient**: The final gradient for each parameter is:
   $$ \frac{\partial \text{loss}}{\partial \text{params}_j} = \frac{1}{N} \sum_i \text{sign}(\text{preds}_i - \text{targets}_i) \cdot \text{inputs}_{ij} $$
   This gradient gets stored in `params.grad` after calling `loss.backward()`.

## Why Divide by \( N \)?
You may have noticed the division by \( N \). This happens because we’re calculating the **mean** of the absolute errors, not just the sum. By dividing by \( N \), we ensure that the gradient reflects the averaging in the loss calculation, keeping the gradient magnitudes consistent regardless of the dataset size.

## Wrapping Up
In summary, the `loss.backward()` function calculates the gradients of the loss with respect to each parameter involved in the computation (like the `params`), and those gradients are stored in the `.grad` attribute of the corresponding variables.

This allows PyTorch to update the model parameters using optimization algorithms like gradient descent, ensuring that the model improves over time by minimizing the loss.

_PS: The cover image with a man holding the test tube is AI-generated. THat's what microsoft bing image creator spat out when I described this post._
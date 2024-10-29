---
title: Understanding the Air Quality Index (AQI)
date: 2024-10-29T10:11:00
author: Richard
image: /assets/images/air_quality/aqi.png
video: ""
layout: post
---
The Air Quality Index (AQI) is a vital tool developed by the U.S. Environmental Protection Agency (EPA) to communicate outdoor air quality and its potential health impacts. This index provides an easy-to-understand system that helps individuals make informed decisions about their outdoor activities and health protection measures.

## How the AQI Works

The AQI uses a color-coded system with six categories, each representing a different level of health concern. These categories are based on index values that range from 0 to 500+. As the AQI value increases, so does the level of air pollution and the associated health risks.

Here's a breakdown of the AQI categories:

The AQI uses a color-coded system with six categories, each representing a different level of health concern. These categories are based on index values that range from 0 to 500+. As the AQI value increases, so does the level of air pollution and the associated health risks.

Here's a breakdown of the AQI categories:

| AQI Category                     | Index Values | Health Concern                         | Color Code |
|----------------------------------|--------------|----------------------------------------|------------|
| Good                              | 0-50        | Minimal or no risk                     | Green      |
| Moderate                          | 51-100      | Potential risk for sensitive individuals | Yellow   |
| Unhealthy for Sensitive Groups    | 101-150     | Health effects for sensitive groups    | Orange     |
| Unhealthy                         | 151-200     | Health effects possible for general public | Red   |
| Very Unhealthy                    | 201-300     | Health alert for everyone              | Purple     |
| Hazardous                         | 301+        | Emergency conditions                   | Maroon     |

![AQI table with colors ]({{ site.baseurl }}/assets/images/air_quality/aqi.png)

*[Image source](https://www.airnow.gov/aqi/aqi-basics/)*

## Key Pollutants Measured

The EPA establishes AQI values for five major air pollutants regulated by the Clean Air Act:

1. Ground-level ozone
2. Particle pollution (PM2.5 and PM10)
3. Carbon monoxide
4. Sulfur dioxide
5. Nitrogen dioxide

Each of these pollutants has a national air quality standard set by the EPA to protect public health.

## Using the AQI

Understanding the AQI can help you plan your daily activities and take necessary precautions:

- **Green (0-50)**: Enjoy outdoor activities without concern.
- **Yellow (51-100)**: Usually safe, but consider reducing prolonged outdoor exertion if you're unusually sensitive to air pollution.
- **Orange (101-150)**: Sensitive groups should reduce prolonged outdoor exertion.
- **Red (151-200)**: Everyone should reduce prolonged outdoor exertion.
- **Purple (201-300)**: Everyone should avoid prolonged outdoor exertion.
- **Maroon (301+)**: Everyone should avoid all outdoor activities.

## Importance of the AQI

The AQI plays a crucial role in protecting public health by providing easily accessible information about air quality. Here are some key reasons why the AQI is important:

1. **Health Protection**: The AQI helps individuals, especially those in sensitive groups, make informed decisions about outdoor activities and potential exposure to air pollution.
2. **Awareness**: By providing daily air quality reports, the AQI raises public awareness about air pollution and its health impacts.
3. **Policy Making**: Government agencies and policymakers use AQI data to develop and implement strategies for improving air quality.
4. **Environmental Education**: The AQI serves as an educational tool, helping people understand the relationship between air quality and health.
5. **Emergency Preparedness**: During severe air pollution events, the AQI helps local authorities issue timely warnings and take necessary actions to protect public health.

## How to Access AQI Information

You can easily access AQI information for your area through various channels:

- **AirNow Website**: The EPA's AirNow website provides real-time AQI data for locations across the United States.
- **Mobile Apps**: Many weather and air quality apps include AQI information.
- **Local News**: Many local news stations include AQI forecasts in their weather reports.
- **State and Local Air Quality Agencies**: These agencies often provide detailed local air quality information.

## Calculate the AQI from PM readings

The Air Quality Index (AQI) used by the US EPA measures both **PM2.5** and **PM10**. PM2.5 refers to particulate matter with a diameter of 2.5 micrometers or smaller, while PM10 includes particles up to 10 micrometers in diameter2.

To calculate the AQI from PM readings, the process involves several steps:

1. **Measure the concentration** of PM2.5 or PM10 in the air (in micrograms per cubic meter, µg/m³).

2. **Compare the measured concentration** to the EPA's AQI breakpoints, which define ranges of concentrations and corresponding AQI values.

3. **Use the formula** to calculate the AQI for the specific pollutant: 

   $$ \text{AQI} = \left( \frac{\text{IHI} - \text{ILO}}{\text{BPHI} - \text{BPLO}} \right) \times (\text{Cp} - \text{BPLO}) + \text{ILO} $$

   Where:
   * **IHI** is the AQI value corresponding to the upper boundary of the AQI category.
   * **ILO** is the AQI value corresponding to the lower boundary of the AQI category.
   * **BPHI** is the concentration value corresponding to the upper boundary of the AQI category.
   * **BPLO** is the concentration value corresponding to the lower boundary of the AQI category.
   * **Cp** is the actual concentration of the pollutant.

4. **Select the highest AQI value** among all pollutants to represent the overall AQI for the area.


For more detailed information when AQI reaches unhealthy levels, consult the EPA's Activity Guides available on the AirNow website. The website shows data for the USA only.

## References

1. [AirNow - AQI Basics](https://www.airnow.gov/aqi/aqi-basics/)
3. World Health Organization. (2021). Air quality and health. Retrieved from https://www.who.int/teams/environment-climate-change-and-health/air-quality-and-health/health-impacts
4. American Lung Association. (2021). State of the Air. Retrieved from https://www.lung.org/research/sota
5. Centers for Disease Control and Prevention. (2021). Air Quality. Retrieved from https://www.cdc.gov/air/default.htm

These references provide additional information on air quality, its health impacts, and global perspectives on air pollution monitoring and management.

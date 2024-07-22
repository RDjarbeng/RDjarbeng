---
layout: post
title: "Richard's personal website- Dr Jekyll & Ruby"
date: 2024-07-22
author: Richard
---

# First step - Why Ruby?

When I decided to build my personal website I could have used [React](https://react.dev/) or just plain html and CSS with [Netlify](https://www.netlify.com/) deploy.
😒 But no, somebody had the bright idea to build with Ruby on Rails and Jekyll with deployment on Github pages.

This site was suppose to be simple in functionality
* Generate pages of post
* Support images and gifs
* Include content about, yours truly, Richard
* Have a smooth blogging experience

At that time I was interested in learning Ruby so I thought why not use that. That was when the trouble began.

## Syntax and extensions
First of all the ruby syntax is slightly weird and there is a mixture of different file formats. Apart from the big three in web development
* HTML
* CSS
* Javascript

There are also more files with extensions:
* Yaml (.yml)
* Markdown (.md)
* Gemfile _(no extension)_

## Deployment and errors
Then comes the deployment on Github. Deploying with the Github pages default for Jekyll apparently does not support certain versions of Jekyll or Ruby or certain gems. So the result was one build error after the other. As shown 😒:
![build errors jekyll](https://github.com/user-attachments/assets/b075fbf5-2675-463b-8aea-032cfdf2dbbd)

### Debugging Jekyll
Then I dug deeper on the [jekyll](https://jekyllrb.com/) website and apparently I have to use a very different workflow that involves github actions and configuring another yaml file🙄. Finally when I got that up and running, the build process for the site apparently is not in a good mood. It can randomly fail even on errors that I have already fixed _(apparently not)_.
Ironically this post also failed when I added it to the posts on the site.
![adding posts to site failed](https://github.com/user-attachments/assets/c1731bac-b045-4bd0-9cd6-33e3107dd21b)

_Sigh_

If you're reading this on my personal website then just know that the evil Dr Jekyll was defeated along with his henchman the build error. Hope to publish this soon🥲. 

~RD

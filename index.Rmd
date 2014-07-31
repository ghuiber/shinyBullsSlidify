---
title       : A Shiny app for plotting road race results
subtitle    : because you usually know only who won and how well you did
author      : Gabi Huiber
job         : consultant
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [shiny]       # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides

---

## The data

* Four years (2011-2014) of results from The Running of the Bulls 8K road race.
* This is a yearly race organized by [The Bull City Running Company](http://www.bullcityrunning.com/our-races/running-of-the-bulls-8k/). It has a great course through beautiful downtown Durham, NC, and it attracts runners of all shapes and ages.
* Years 2011-2013 are available as pdf [here](http://download.cnet.com/Free-PDF-to-Text-Converter/3000-10743_4-76060144.html). The [Free PDF to Text Converter](http://download.cnet.com/Free-PDF-to-Text-Converter/3000-10743_4-76060144.html) will turn them to text, but it's not perfect. I had to do some extra munging by hand in [Vim](http://www.vim.org/) before my text files were ready for `read.table()`. 
* The results for 2014 are available [here](http://runningofthebulls8k.itsyourrace.com/results.aspx?id=3105), and `XML::readHTMLTable()` makes quick work of them.
* My [Shiny app](https://ghuiber.shinyapps.io/shinyBulls/) comes with a `bulls.rda` file that holds the final product of doing all the work described above: a `bulls` data frame that combines years 2011-2014.

--- .class #id 

## Some questions you might ask

1. Is there a peak age group at which paces are faster on average?
2. Is the variance in the paces smaller at this peak age group?
3. What's the distribution of age groups? The gender split? Age groups by gender?
4. Do men run faster than women on average? And if this is so on average, to what extent do the distributions of paces overlap between men and women?

---

## The app (wait for it)

<iframe src=https://ghuiber.shinyapps.io/shinyBulls/></iframe>

---

## Why write a web app when a static plot will do?

1. When one plot will do, don't write a web app. It's not worth it.
2. But static plots have a way of multiplying: there's always another way to subset the data, or variable to look at, with the appropriate plot style changing accordingly. 
3. A web app eliminates the clutter by rendering only the pictures that people care about, on demand. 
4. Interactive plots are better than static ones at engaging the audience, I expect.
5. The fixed cost of writing a web app makes you think about your options carefully (you don't want too many checkboxes) without necessarily limiting them (static plots that you might leave out of a slide deck that's getting a bit too leafy can be a radio button away).

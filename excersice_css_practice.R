library(tidyverse)
library(rvest)

# url to scrape
url <- "http://velocity.ninja/scraping/index2.html"

page <- read_html(url) # get page

# Question 1: get this text by referencing the id "dog"
page %>% html_elements(css = "#dog") %>% html_text()

# Question 2: get all text that have the class "cow"
page %>% html_elements(css = ".cow") %>% html_text()

# Question 3: only get the text for the class "cow" in the div with the class called "farm"
page %>% html_elements(css = ".farm .cow") %>% html_text()

# Question 4: Get the text of all animals in the zoo list
page %>% html_elements(css = ".zoo li") %>% html_text()

# Question 5: get the text of this question, also in the div with a class of "zoo"
page %>% html_elements(css = ".zoo div:nth-child(1)") %>% html_text()

# Question 6: get the text of this question, also in the div with a class of "zoo" using a different method
page %>% html_elements(css = ".zoo div:last-child") %>% html_text()

# Question 7: get the text of this question, which has a data-my-id attribute in the div
page %>% html_elements(css = "div[data-my-id='goat']") %>% html_text()


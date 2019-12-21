# Word Definer
## Created by: Alyssa Colistro

## Description:
### A simple web app that allows user to create new words and add a definition for the words. This app was created to practice using routing in ruby and using the heroku tool.

## Specs
|HTTP verb|Route|CRUD Action|Description|
|---|---|---|---|
|GET|/words|READ|Get list of words|
|GET|/words/:id|READ|Look at info page for single word|
|POST|/words|CREATE|Add new word to the list of words|
|PATCH|/words/:id|UPDATE|Update single word|
|DELETE|/words/:id|DELETE|Delete word from the list|
|GET|/words/new|READ|Navigate to page for adding a new word to list|
|GET|/words/:id/edit|READ|Navigate to form page for editing a word

### Setup
* Clone this repository: https://github.com/acolistro/week-8.git
* Bundle repository to incorporate ruby gems
* Add this project to your own github and be sure to push any updates to your github before pushing to your heroku.
* create a heroku page and push project to heroku.
* You can find my Heroku version of this app here: https://afternoon-badlands-87020.herokuapp.com/words

## Known Bugs

_This app returns a "not found" message when user clicks on a word they have added to the list. Also, when the main page is refreshed, it will duplicate the last word added._

## Support and contact details

_If you find a bug or solution to pass the final spec, I highly encourage you to contact me at arcolistro@gmail.com and/or submit a pull request to this repository. Please note that this application is not built to be compatible with web-accessibility tools or be viewed on any browser other than the current version of the Chrome browser._

### Technologies Used
_This project was built using HTML, Ruby, Ruby Gems, Sinatra and Heroku._

### License
*No licenses are needed for the current version of this application*

Copyright (c) 2019 **_MallSoft95 LLC_**




## Specs

**Behavior:**
**Input:**
**Output:**

**Behavior:** _User can add a word to the list_
**Input:** _word_
**Output:** _word_

**Behavior:** _User can add multiple word_names to words_
**Input:** _word: word_name of word_
**Output:** _word: word_name of word_

**Behavior:** _When a word is clicked, it's word_name(s) are displayed_
**Input:** _click on word link_
**Output:** _display word_name of word_

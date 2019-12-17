# Acebook - wizardCow

Acebook wizardCow can be accessed [here].

## 1 User Experience Design (UX)
## 1.1 User Stories
  * User Stories Completed

## 2 Features
## 2.1 Existing Features
Discuss (Create, Read, Update, Delete) Features

## 2.2 Database

## 2.3 Layout and Overall Aesthetics

## 2.4 Potential Features to Implement

## 3 Technologies used
  - Atom (IDE) - The Integrated Development Environment (IDE) used for building the website.
  - Ruby on Rails - Main programming language used for building the Acebook - wizardCow Application.
  - Heroku - Chosen deployment site for the Acebook application.
  - Travis CI - Used to build and test software project from web application code hosted at GitHub.
  - PostgreSQL - Used to build the development and test databases for the application.
  - Material Icon - Used for displaying the social logos and vector icons present on the website.

## 4 Testing
## 4.1 Process of Testing Features

## 4.2 Automated Test Results

## 4.3 Device Screen Size and Browser Compatibility Test Results
  * The below screen size tests were carried out assessing performance of all pages of the website using Google Chrome 78.0 (Mac):

  Device | Screen Size (Width x Height) | Acebook - wizardCow
  ---- | ---- | ---- |
  Galaxy S5 | 360 x 640 | ✓ |
  Pixel 2 | 411 x 731 | ✓ |
  Pixel 2 XL | 411 x 823 | ✓ |  
  iPhone 5 SE | 320 x 568 | ✓ |
  iPhone 6/7/8 | 375 x 667 | ✓ |
  iPhone 6/7/8 Plus | 414 x 736 | ✓ |
  iPhone X | 375 x 812 | ✓ |
  iPad | 768 x 1024 | ✓ |
  iPad Pro | 1024 x 1366 | ✓ |

  * Key: ✓ - Application loads successfully

## 4.4 Responses from users who tried out the Acebook - wizardCow application

## 4.5 Interesting bugs or problems discovered during testing
  - Struggling with rails db:migrate RAILS_ENV=test which conflicted with simplecov. We figured out that `require :false was causing` us issues and thus commenting it out made our test db work. So if it runs every time we run our project then \_O_/ so be it.

## 5 Deployment
## 5.1 Running the code locally
  - Make a clone of Acebook wizardCow3 application on your local machine by using the
    command `git clone https://github.com/beccyv/acebook-v3.git`
## 5.2 Deploying to Heroku
  - Inside the application folder cloned to your local machine, type into the terminal `brew tap heroku/brew && brew install heroku`
  - Next, type `heroku login`, a new tab will load prompting you to sign in to heroku, click log in
  - Once logged in, do `git remote add heroku http://git.heroku.com/your-herokuapp-name.git`
  - Then do `git push && git push heroku master` to update your changes to GitHub and deploy the
    application to your chosen Heroku point.

## 6. Credits
## 6.1 Content/Media
  - Ruby Documentation
  - Rails Setup Documentation
## 6.2 Acknowledgements


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions


[//]: # (Below are the reference links used in the body of the README file)
[here]: <https://acebook-wizardcow3.herokuapp.com/>

# README

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

* ...

* Struggling with rails db:migrate RAILS_ENV=test which conflicted with simplecov. We figured out that `require :false was causing` us issues and thus commenting it out made our test db work. So if it runs every time we run our project then \_O_/ so be it.

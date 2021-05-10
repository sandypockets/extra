# Extra
Extra is a blogging platform for sharing ideas, stories, and more. Extra was built with Ruby on Rails, styled with Sass, and inspired by Medium.

## Features

* User sign up and authentication
* Visitors (not logged in) can read stories
* Users (logged in) can write, edit and delete (their own) stories
* Users can favourite stories
* Users can filter stories by topic

## Getting Started

1. [Fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo), then [clone](https://github.com/git-guides/git-clone) the project by running `git@github.com:sandypockets/extra.git` in your terminal
2. From the project root, install dependencies by running `bundle install`
3. From the root, run `rails server`. Navigate to [`localhost:3000`](http:localhost:3000)

## Dependencies

* Ruby `2.6.3`
* Rails `6.1.3.2`
* Node `10.17.0`
* SQLite

## Database

Extra currently uses an [SQLite](https://www.sqlite.org/docs.html) database. While this is sufficient for development of the core features, eventually the app will be migrated to [Postgres](https://www.postgresql.org/docs/) so it can be deployed.

An ERD of the database can be found in the project's `docs/` directory.

### Wireframe
* Figma - Link to project on Figma

---

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

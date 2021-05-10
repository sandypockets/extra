# 📰 Extra
Extra is a blogging platform for sharing ideas, stories, and more. Extra was built with Ruby on Rails, styled with Sass.

----
## ✨ Features

* User sign up and authentication
* Visitors (not logged in) can read stories
* Users (logged in) can write, edit and delete (their own) stories
* Users can favourite stories
* Users can filter stories by topic

## 🛠 Getting Started

1. [Fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo), then [clone](https://github.com/git-guides/git-clone) the project.
   ```
    git clone git@github.com:sandypockets/extra.git
   ```
2. From the project root, install dependencies. 
   ```
   bundle install
   ```
   
3. From the root, start the server.
    ```
    rails server
   ```

4. Navigate to [`localhost:3000`](http:localhost:3000) in your favourite web browser.

## 📦 Dependencies

* [Ruby](https://github.com/ruby/ruby) `2.6.3`
* [Rails](https://github.com/rails/rails) `6.1.3.2`
* [Node](https://nodejs.dev/) `10.17.0`
* [SQLite3](https://www.sqlite.org/docs.html) `1.4`
* [bcrypt](https://github.com/bcrypt-ruby/bcrypt-ruby) `3.1.7`
* [active_link_to](https://github.com/comfy/active_link_to)
* [simple_form](https://github.com/heartcombo/simple_form)

## 🗂 Database

Extra currently uses an [SQLite](https://www.sqlite.org/docs.html) database. While this is sufficient for development of the core features, eventually the app will be migrated to [Postgres](https://www.postgresql.org/docs/) so it can be deployed.

An ERD of the database can be found in the project's `docs/` directory.

## 🎯 Wireframe
* [Wireframe on Figma](https://www.figma.com/file/DH4RNUH5M46X7nSDhBvarF/Extra-Wireframe-GitHub?node-id=0%3A1)

## 📸 Screenshots

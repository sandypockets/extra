<h1 align="center">📰 Extra</h1>
Extra is a blogging platform for sharing ideas, stories, and more. Extra was built with Ruby on Rails, and styled with Sass.

----
## ✨ Features

* Visitors (not logged in) can read stories
* User sign up and authentication
* Users can upload images for avatars or stories
* Users can edit their profile or change their password
* Users can write, edit and delete (their own) stories
* Users can comment on stories
* Users can favourite stories
* Users can see which stories have been favourited be other users
* Users can filter stories by topic
* Rich Text Editor for writing stories or comments

### Admin Features

* Admin dashboard
* Admins can create, edit, or delete stories, users, and comments
* Admins can create new Admin users
* Admins can create, edit, or delete static pages (About Us, Terms of Service, etc)
* Admins can leave internal comments within the Admin dashboard

## 🛠 Getting Started

1. [Fork](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo), then [clone](https://github.com/git-guides/git-clone) the project.
   ```
    $ git clone git@github.com:sandypockets/extra.git
   ```
2. From the project root, install dependencies. 
   ```
   $ bundle install
   ```
   
3. From the root, start the server.
    ```
    $ rails server
   ```

4. Navigate to [`localhost:3000`](http:localhost:3000) in your favourite web browser.

> If you're seeing an error stating that there are migrations pending, run through steps 1 and 2 of the `Database` section below to resolve it. Once complete, run `rails server`.

## 📦 Dependencies

* [Ruby](https://github.com/ruby/ruby) `2.6.3`
* [Rails](https://github.com/rails/rails) `6.1.3.2`
* [Node](https://nodejs.dev/) `10.17.0`
* [SQLite3](https://www.sqlite.org/docs.html) `1.4`
* [bcrypt](https://github.com/bcrypt-ruby/bcrypt-ruby) `3.1.7`
* [active_link_to](https://github.com/comfy/active_link_to)
* [simple_form](https://github.com/heartcombo/simple_form)
* [carrierwave](https://github.com/carrierwaveuploader/carrierwave) `2.0`
* [activeadmin](https://activeadmin.info/documentation.html)
* [devise](https://github.com/heartcombo/devise)
* [cancancan](https://github.com/CanCanCommunity/cancancan)
* [draper](https://github.com/drapergem/draper)
* [pundit](https://github.com/varvet/pundit)

## 🗂 Database

Extra currently uses an [SQLite](https://www.sqlite.org/docs.html) database. While this is sufficient for development of the core features, eventually the app will be migrated to [Postgres](https://www.postgresql.org/docs/) so it can be deployed.

An ERD of the database can be found in the project's `docs/` directory.

In some instances you may need to reset the database, or make manual changes. To do that, follow the instructions below.

1. Reload the database from the schema.

```
$ rake db:reset
```

2. Drop the current tables, recreate them, run the migrations, and any seeds.

```
$ rake db:drop db:create db:migrate db:seed
```

Any data that was not included in a seed should now be wiped. 

### Adjusting the database manually
Sometimes you might need to set a user as an admin manually. You can do that with the Rails Console. 
```
$ rails console
```
1. Set the user you want to change as a variable
```
$ @user = User.find_by(username: "kobe")
```
2. Confirm you have the correct user by running the variable. The user's information should print to the terminal.
```
$ @user
```
3. Now you can proceed with adjusting the user's admin privileges. 
```
$ @user.is_admin = true
```
4. Printing `@user` again should now show the user's admin status is `true`. Next, save the changes to the database.
```
$ @user.save
```
5. You can exit the Rails Console with `control`+`d`

## 🚀 Project Roadmap
Stretch features to be implemented at a later date:
* Users can favourite topics
* Users can see which topics other users have marked as favourite
* Password reset emails
* Migrate front end from ERB to React

## 🎯 Wireframe
* [Wireframe on Figma](https://www.figma.com/file/DH4RNUH5M46X7nSDhBvarF/Extra-Wireframe-GitHub?node-id=0%3A1)

## Acknowledgements

* [Lighthouse Labs](https://www.lighthouselabs.ca/)' instruction, providing me with the skills to create a Rails app from scratch.
* [Undraw.co's](https://undraw.co/) free SVGs.

## 📸 Screenshots

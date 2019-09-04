# tic-tac-toe (back-end)

This repo contains the backend for a tic-tac-toe game made in Emberjs.
The repo for the frontend can be found [here](https://github.com/Thewessen/tic-tac-toe_emberjs).

I have no experience with the Ruby programming language. Let alone the Ruby on Rails
framework. I just recently divide into Laravel (php framework) which helped my
learning process quite a bit.

This app doesn't need much of a backend too run. But, creating this app also
for learning, I wanted to make the backend an almost equal part of the app.

## Dependencies

(Ruby comes preinstalled on Linux)

- Rails v6.0.0 `gem install rails`
- sqlite3 v3.22.0 `apt install sqlite3 libsqlite3-dev ruby-sqlite3`

## Setup

- `git clone <repository-url>` this repository
- `cd tic-tac-toe_ruby_backend`
- run `bundle install`
- `rails db:migrate`
- `rails db:seed`
- `rails server`

Server should now be running no [http://localhost:3000/games](http://localhost:3000).
Visit [/nicknames](http://localhost:3000/nicknames) to verify you have some
response data.

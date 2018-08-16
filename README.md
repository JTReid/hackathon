# Cratebind Base Project

## Prerequesites

To run the server in development mode, you'll need:

* ruby interpreter version according to `.ruby-version`. Using [rvm] or [rbenv]
is advisable
* PostgreSQL database version 9.3. On OS X, using the [Postgres.app] is the
simplest way to get it running.
* [Redis] is also used to schedule background jobs. On OS X, you can install it
via homebrew.

## Setting up

* `bundle install` to get all required gems
* `bundle exec rake db:create` to create the database
* `bundle exec rake db:setup` to create the database schema and seed data
* `bundle exec hookup` To make your database schema sync after each git checkout
* Set up your local_env.yml file copied from local_env.example.yml. You should get the development values from a colleague

## Running

`bundle exec rails s`

This will run the Rails server on <http://localhost:3000> and [Sidekiq] job
processor.

## Delivery Flow

On the current stage of the project, the following environments are available:

| Environment | Branch         |  Description |
|-------------|----------------|--------------|
| *Staging*     | `master`         | Used to perform review on the client side. |

All the Pull Requests must be made against `master`.

## Branch naming convention

Branches should be named according to the following structure:

`[task-type]/[task-id]/[task-title]`

Where:
* `task-type` can be `feature`, `bugfix` or `enhancement`
* `task-id` corresponds to the id of the card on Jira
* `task-title` describes what the task concerns.

[Redis]: http://redis.io
[rvm]: http://rvm.io
[rbenv]: http://rbenv.org
[Postgres.app]: http://postgresapp.com/
[Sidekiq]: http://sidekiq.org/

## Continous Integration

Through gitlab CI, we check the following aspects after every branch is pushed

* `rubocop` Checks that the ruby syntax meets the best practice guideline
* `rubycritic` If the code is to complex it breaks and asks for you to refactor(make it simpler)
* `yardoc` We verify that we meet at least 90% documentation coverage
* `simplecov` We run the tests and check that testing coverage is at least 95%

## Continous Integration Tasks

`rake ci:build:commit` # Runs all tests

`rake ci:build:rubocop` # Runs RuboCop code format verification

`rake ci:build:rubycritic` # Runs RubyCritic code complexity verification

`rake ci:build:simplecov` # Runs rspec with code coverage analysis and profile

`rake ci:build:documentation` # Runs documentation generate and verifies its coverage

## Hot Module Replacement
For rapid development with React, this setup includes [https://webpack.js.org/concepts/hot-module-replacement/](Hot Module Replacement), which will update React components without reloading the page.

To use HMR, run:
```
$ npm run dev
```
# dummy_rails_app [![Build Status](https://travis-ci.org/efigence/dummy_rails_app.svg?branch=master)](https://travis-ci.org/efigence/dummy_rails_app)
Vanilla Rails application for deployment

## Updating `new_artrails_capistrano` gem in development

Switch comments in Gemfile like this:

```
# before going to travis:
gem 'new_artrails_capistrano', git: 'https://github.com/efigence/new_artrails_capistrano'
# gem 'new_artrails_capistrano', path: 'vendor/gems/new_artrails_capistrano'
```

Then, run:

```
$ bundle install --path vendor/bundle
$ bundle package --all
```

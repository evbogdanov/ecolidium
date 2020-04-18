# How to setup Ruby and Rails

## Install specific Ruby version

First thing I have to install is [rbenv](https://github.com/rbenv/rbenv). It manages Ruby versions.

```
brew install rbenv
```

Setting it up is easy. Just follow the guide on GitHub.

Then install the desired version of Ruby:

```
rbenv install 2.7.1

rbenv global 2.7.1
```

Check installed version:

```
ruby -v
ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-darwin18]

which ruby
/Users/ev/.rbenv/shims/ruby

which gem
/Users/ev/.rbenv/shims/gem
```


## Installing Rails

```
gem install rails -v 6.0.2.2

rbenv rehash

which rails
/Users/ev/.rbenv/shims/rails

rails -v
Rails 6.0.2.2
```

## Installing Postgres driver

```
gem install pg
```

## Creating the app

```
rails new ecolidium --database=postgresql
```

## Postgres

Change `config/database.yml`

Create database:

```
rake db:setup
```

## Have fun!

```
rails server
```

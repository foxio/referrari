# Referrari
[![Build Status](https://travis-ci.org/foxio/referrari.svg)](https://travis-ci.org/foxio/referrari)
[![Code Climate](https://codeclimate.com/github/foxio/referrari/badges/gpa.svg)](https://codeclimate.com/github/foxio/referrari)
[![security](https://hakiri.io/github/foxio/referrari/master.svg)](https://hakiri.io/github/foxio/referrari/master)

![Referrari icon](http://foxiowebsite.s3.amazonaws.com/wp-content/uploads/2014/10/referrari-logo-128.png)

## Overview

A simple referral library.

## Installation


Add this line to your application's Gemfile:

```bash
gem 'referrari'
```


And then execute:

```bash
$ bundle
```


Or install it yourself as:


```bash
$ gem install referrari
```

## Getting Started

Run the migrations in your app

```bash
rake app:referrari:install:migrations
```

## Usage

### Configuring Models

#### User
The user model is expected.

```ruby
class User < ActiveRecord::Base
  include Referrari::User
end
```

## Contributing

Fork it ( github.com/[my-github-username]/referrari/fork )

Create your feature branch (`git checkout -b my-new-feature`)

Commit your changes (`git commit -am 'Add some feature'`)

Push to the branch (`git push origin my-new-feature`)

Create a new Pull Request

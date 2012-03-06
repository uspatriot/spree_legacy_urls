Spree Legacy Urls
===============

Provides a "Legacy URL Slug" field on the product edit page. If a URL isn't 
located within your routes.rb file the extension will then check to see if 
any product's legacy URL slug matches it and then provide a 301 redirect to 
that product.

Installation
============

1. Add the following to your Gemfile

	`gem 'spree_legacy_urls', :path => 'spree_legacy_urls'`

2. `rails g spree_legacy_urls:install`


Example
=======

If the product "ruby-on-rails-mug" had a url slug of "rails-cup.html" them both 
of the following urls would be 301 redirected to the correct product 
page (http://localhost:3000/products/ruby-on-rails-mug):

* http://localhost:3000/rails-cup.html
* http://localhost:3000/products/rails-cup.html

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test app
    $ bundle exec rspec spec

Copyright (c) 2012 [name of extension creator], released under the New BSD License

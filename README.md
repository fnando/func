# Func

[![Build Status](https://travis-ci.org/fnando/func.svg?branch=master)](https://travis-ci.org/fnando/func)

Utility functions for making your life easier.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "func"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install func

## Usage

You can call utility functions directly from the `Func` model. Alternatively you can inject the `Func` module so you can access utility functions globally.

### Hash

- `Func.hash_fetch(hash, *keys)` is similar to multiple `Hash#fetch` calls, e.g. `hash.fetch(:a).fetch(:b).fetch(:c)` becomes `Func.hash_fetch(hash, :a, :b, :c)`.
- `Func.hash_except(target, *keys)` returns a new hash without the given keys.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fnando/func. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

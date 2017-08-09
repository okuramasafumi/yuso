[![Build Status](https://travis-ci.org/okuramasafumi/yuso.svg?branch=master)](https://travis-ci.org/okuramasafumi/yuso)

# Yuso

Yuso is a gem to get some data from famous Japanese shipping companies such as Yamato.
Currently it provides prefecture-area mapping and shipping fee data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yuso'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yuso

## Usage

Yuso supports 3 shipping companies and each have different namespace. There is only one interface: `load` class method. For example:

```ruby
Yuso::Yamato::Mapping.load # => prefecture-area mapping for Yamato
Yuso::Sagawa::ShippingFee.load('tokyo') # => shipping fee table for Sagawa and from Tokyo
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/okuramasafumi/yuso.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

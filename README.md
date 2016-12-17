# Operationcode::Airtable

[![Build Status](https://travis-ci.org/OperationCode/operationcode-airtable.svg?branch=master)](https://travis-ci.org/OperationCode/operationcode-airtable)
[![Code Climate](https://codeclimate.com/github/OperationCode/operationcode-airtable/badges/a.svg)](https://codeclimate.com/github/OperationCode/operationcode-airtable)
[![Test Coverage](https://codeclimate.com/github/OperationCode/operationcode-airtable/badges/coverage.svg)](https://codeclimate.com/github/OperationCode/operationcode-airtable/coverage)

This gem provides a common interface to airtables for the Operation Code platform.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'operationcode-airtable', git: 'https://github.com/OperationCode/operationcode-airtable'
```

And then execute:

    $ bundle

## Usage

* Require the gem in your application like so:
```ruby
require 'operationcode/airtable'
```
* Set the AIRTABLE_API_KEY environment variable.
* Retreive your base_id and table name from the airtable API documentation
* Instantiate a new object with these values. For example:
```ruby
2.3.0 :001 > a = Operationcode::Airtable.new(base_id:  'YOUR-BASE-ID', table: 'YOUR-TABLE-NAME')
```
* You can now interact with the airtables API.

Currently only #all and #create is supported. Please file a ticket (or a PR) if you need more functionality.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/OperationCode/operationcode-airtable. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


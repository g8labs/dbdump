# Dbdump

Simple rake tasks for dumping and restoring the database.

Supported active_record adapters:

 - postgresql

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dbdump'
```

And then execute:

    $ bundle

Or install it yourself as:

```
gem install dbdump
```

## Usage

### Dump

To dump the database you need to run:

```
rake db:dump
```

This will dump the development database and store the dump file in `db/development.dump`. You can change the
environment with the `RAILS_ENV` variable.

```
RAILS_ENV=production rake db:dump
```

### Restore

For restoring the database is pretty similar.

```
rake db:restore
```

and

```
RAILS_ENV=production rake db:dump
```

You need to have the `db/env.dump` file available in order to work properly.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/g8labs/dbdump.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

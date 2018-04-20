# EffDiceware

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'eff_diceware'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install eff_diceware

## Usage

Use in your Ruby application by requiring the gem and calling `EffDiceware.generate`:

```ruby
require "eff_diceware"

EffDiceware.generate(5)

# => "fondue machine blasphemy diffused reaffirm"
```

You can also create passphrases from the command line:

```shell
$ diceware -n5
decent uncoated geologist april stubborn
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/EFForg/eff_diceware.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

The wordlist file is distributed under the [Creative Commons Attribution License](https://creativecommons.org/licenses/by/3.0/us/).

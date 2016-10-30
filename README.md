# RPi::HD44780

Extremely simple ruby library designed to control a HD44780 16x2 display from a
Raspberry Pi.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rpi-hd44780'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rpi-hd44780

## Usage

Create an instance passing RS, E, and data pins:

```ruby
  display = RPi::HD44780.new 1, 2, [3, 4, 5, 6]
```

([See the adafruit website for information on how to wire
it.](https://learn.adafruit.com/drive-a-16x2-lcd-directly-with-a-raspberry-pi/wiring))

Send a message:

```ruby
  display.message "Line1\nLine2"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nsatragno/rpi-hd44780.

## Acknowledgements

Thanks to lrvick for [his python
implementation](https://github.com/lrvick/raspi-hd44780)

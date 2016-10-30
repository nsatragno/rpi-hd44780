# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpi/version'

Gem::Specification.new do |spec|
  spec.name          = "rpi-hd44780"
  spec.version       = RPi::HD44780::VERSION
  spec.authors       = ["Nina Satragno"]
  spec.email         = ["nsatragno@gmail.com"]
  spec.licenses       = ["GPL-3.0"]

  spec.summary       = %q{Control a HD44780 display from a Raspberry Pi.}
  spec.description   = %q{This simple library allows controlling a 16x2 display attached to a Raspberry Pi. Based on the python equivalent, https://github.com/lrvick/raspi-hd44780.}
  spec.homepage      = "https://github.com/nsatragno/rpi-hd44780"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rpi_gpio", "~> 0"
end

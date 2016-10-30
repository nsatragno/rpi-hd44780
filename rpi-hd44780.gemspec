# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpi/version'

Gem::Specification.new do |spec|
  spec.name          = "rpi-hd44780"
  spec.version       = RPi::HD44780::VERSION
  spec.authors       = ["Nicolás Satragno"]
  spec.email         = ["nsatragno@gmail.com"]
  spec.licenses       = ["GPL-3.0"]

  spec.summary       = %q{Control a HD44780 display from a Raspberry Pi.}
  spec.description   = %q{This simple library allows controlling a 16x2 display attached to a Raspberry Pi. Based on the python equivalent, https://github.com/lrvick/raspi-hd44780.}
  spec.homepage      = "https://github.com/nicolassatragno/rpi-hd44780"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

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

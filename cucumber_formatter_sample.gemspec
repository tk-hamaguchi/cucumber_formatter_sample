# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cucumber_formatter_sample/version'

Gem::Specification.new do |spec|
  spec.name          = "cucumber_formatter_sample"
  spec.version       = CucumberFormatterSample::VERSION
  spec.authors       = ["Takahiro HAMAGUCHI"]
  spec.email         = ["tk.hamaguchi@gmail.com"]
  spec.summary       = %q{Write docx with scenario list}
  spec.description   = %q{Write docx with scenario list.}
  spec.homepage      = 'https://github.com/tk-hamaguchi/cucumber_formatter_sample'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  #spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", 'misc']

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'cucumber', '~> 1.3'
  spec.add_runtime_dependency 'sablon', '0.0.4'
  spec.add_runtime_dependency 'activesupport', '~> 4.0'
end

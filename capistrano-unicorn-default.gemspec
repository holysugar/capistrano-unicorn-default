# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-unicorn-default/version'

Gem::Specification.new do |gem|
  gem.name          = "capistrano-unicorn-default"
  gem.version       = Capistrano::Unicorn::Default::VERSION
  gem.authors       = ["HORII Keima"]
  gem.email         = ["holysugar@gmail.com"]
  gem.description   = %q{capistrano uses unicorn default}
  gem.summary       = %q{alias unicorn: tasks as deploy:}
  gem.homepage      = "https://github.com/holysugar/capistrano-unicorn-default"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'capistrano'
  #gem.add_runtime_dependency 'capistrano-unicorn' # hmm...
end

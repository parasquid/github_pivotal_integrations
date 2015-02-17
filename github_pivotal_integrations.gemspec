# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github_pivotal_integrations/version'

Gem::Specification.new do |spec|
  spec.name          = "github_pivotal_integrations"
  spec.version       = GithubPivotalIntegrations::VERSION
  spec.authors       = ["Tristan"]
  spec.email         = ["tristan.gomez@gmail.com"]
  spec.summary       = %q{Github and Pivotal Integrations}
  # spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ['git-release']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "octokit", "~> 3.0"
  spec.add_dependency "commander", "~> 4"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "pry"

end

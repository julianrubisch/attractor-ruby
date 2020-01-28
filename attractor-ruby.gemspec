# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'attractor/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'attractor-ruby'
  spec.version       = Attractor::Ruby::VERSION
  spec.authors       = ['Julian Rubisch']
  spec.email         = ['julian@julianrubisch.at']

  spec.summary       = 'Churn vs Complexity Chart Generator'
  spec.description   = <<-DESCRIPTION
    Attractor plugin for the Ruby programming language and its ecosystem
  DESCRIPTION
  spec.homepage = 'https://github.com/julianrubisch/attractor-ruby'
  spec.licenses = ['MIT']

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/julianrubisch/attractor-ruby'
  spec.metadata['bug_tracker_uri'] = "#{spec.homepage}/issues"
  spec.metadata['changelog_uri'] = 'https://github.com/julianrubisch/attractor-ruby/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(src|tmp|test|spec|features|\.github)/}) ||
        %w[.all-contributorsrc .rspec .rspec_status .travis.yml].include?(f)
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'attractor', '~> 2.0'

  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'standard'
  spec.add_development_dependency 'structured_changelog'
end

# -*- encoding: utf-8 -*-
# stub: new_artrails_capistrano 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "new_artrails_capistrano"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib"]
  s.authors = ["Marcin Kalita", "Rafa\u{142} Lisowski"]
  s.bindir = "exe"
  s.date = "2017-07-14"
  s.description = "This gem is a viable alternative to Git deployments on production machines. Commands are run under a different user than the `deploy` user."
  s.email = ["rubyconvict@gmail.com", "lisukorin@gmail.com"]
  s.files = [".codeclimate.yml", ".gitignore", ".rspec_status", ".rubocop.yml", ".rubocop_todo.yml", ".travis.yml", "CHANGELOG.md", "CODE_OF_CONDUCT.md", "Gemfile", "Guardfile", "LICENSE.txt", "Manifest.txt", "README.md", "Rakefile", "bin/console", "bin/setup", "config.reek", "lib/.keep", "lib/capistrano/new_artrails_capistrano.rb", "lib/capistrano/new_artrails_capistrano/version.rb", "lib/capistrano/tasks/new_artrails_capistrano.rake", "lib/new_artrails_capistrano.rb", "new_artrails_capistrano.gemspec", "rubocop_output.json"]
  s.homepage = "https://github.com/efigence/new_artrails_capistrano"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new("~> 2.1.1")
  s.rubygems_version = "2.4.6"
  s.summary = "Capistrano 3 deployment using Rsync, a local Git repository and sudo as user."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, ["< 4", ">= 3.5"])
      s.add_runtime_dependency(%q<capistrano-rails>, ["< 2", ">= 1.3"])
      s.add_runtime_dependency(%q<capistrano-rvm>, ["< 2", ">= 0.1"])
      s.add_runtime_dependency(%q<rack>, ["< 2", ">= 1.6"])
      s.add_runtime_dependency(%q<turnout>, ["< 3", ">= 2.2"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<fuubar>, ["~> 2"])
      s.add_development_dependency(%q<activesupport>, ["~> 4.2.9"])
      s.add_development_dependency(%q<github_changelog_generator>, ["~> 1"])
      s.add_development_dependency(%q<listen>, ["~> 3.0.8"])
      s.add_development_dependency(%q<guard>, ["~> 2"])
      s.add_development_dependency(%q<guard-bundler>, ["~> 2"])
      s.add_development_dependency(%q<guard-reek>, ["~> 1"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4"])
      s.add_development_dependency(%q<guard-rubocop>, ["~> 1"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.48.1"])
      s.add_development_dependency(%q<rubocop-rspec>, ["~> 1"])
      s.add_development_dependency(%q<rubygems-manifest>, ["~> 0"])
      s.add_development_dependency(%q<coveralls>, ["= 0.8.19"])
      s.add_development_dependency(%q<simplecov>, ["= 0.12.0"])
      s.add_development_dependency(%q<simplecov-console>, ["~> 0"])
      s.add_development_dependency(%q<codeclimate-test-reporter>, ["= 0.4.8"])
      s.add_development_dependency(%q<pry>, ["~> 0.10.4"])
    else
      s.add_dependency(%q<capistrano>, ["< 4", ">= 3.5"])
      s.add_dependency(%q<capistrano-rails>, ["< 2", ">= 1.3"])
      s.add_dependency(%q<capistrano-rvm>, ["< 2", ">= 0.1"])
      s.add_dependency(%q<rack>, ["< 2", ">= 1.6"])
      s.add_dependency(%q<turnout>, ["< 3", ">= 2.2"])
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<fuubar>, ["~> 2"])
      s.add_dependency(%q<activesupport>, ["~> 4.2.9"])
      s.add_dependency(%q<github_changelog_generator>, ["~> 1"])
      s.add_dependency(%q<listen>, ["~> 3.0.8"])
      s.add_dependency(%q<guard>, ["~> 2"])
      s.add_dependency(%q<guard-bundler>, ["~> 2"])
      s.add_dependency(%q<guard-reek>, ["~> 1"])
      s.add_dependency(%q<guard-rspec>, ["~> 4"])
      s.add_dependency(%q<guard-rubocop>, ["~> 1"])
      s.add_dependency(%q<rubocop>, ["~> 0.48.1"])
      s.add_dependency(%q<rubocop-rspec>, ["~> 1"])
      s.add_dependency(%q<rubygems-manifest>, ["~> 0"])
      s.add_dependency(%q<coveralls>, ["= 0.8.19"])
      s.add_dependency(%q<simplecov>, ["= 0.12.0"])
      s.add_dependency(%q<simplecov-console>, ["~> 0"])
      s.add_dependency(%q<codeclimate-test-reporter>, ["= 0.4.8"])
      s.add_dependency(%q<pry>, ["~> 0.10.4"])
    end
  else
    s.add_dependency(%q<capistrano>, ["< 4", ">= 3.5"])
    s.add_dependency(%q<capistrano-rails>, ["< 2", ">= 1.3"])
    s.add_dependency(%q<capistrano-rvm>, ["< 2", ">= 0.1"])
    s.add_dependency(%q<rack>, ["< 2", ">= 1.6"])
    s.add_dependency(%q<turnout>, ["< 3", ">= 2.2"])
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<fuubar>, ["~> 2"])
    s.add_dependency(%q<activesupport>, ["~> 4.2.9"])
    s.add_dependency(%q<github_changelog_generator>, ["~> 1"])
    s.add_dependency(%q<listen>, ["~> 3.0.8"])
    s.add_dependency(%q<guard>, ["~> 2"])
    s.add_dependency(%q<guard-bundler>, ["~> 2"])
    s.add_dependency(%q<guard-reek>, ["~> 1"])
    s.add_dependency(%q<guard-rspec>, ["~> 4"])
    s.add_dependency(%q<guard-rubocop>, ["~> 1"])
    s.add_dependency(%q<rubocop>, ["~> 0.48.1"])
    s.add_dependency(%q<rubocop-rspec>, ["~> 1"])
    s.add_dependency(%q<rubygems-manifest>, ["~> 0"])
    s.add_dependency(%q<coveralls>, ["= 0.8.19"])
    s.add_dependency(%q<simplecov>, ["= 0.12.0"])
    s.add_dependency(%q<simplecov-console>, ["~> 0"])
    s.add_dependency(%q<codeclimate-test-reporter>, ["= 0.4.8"])
    s.add_dependency(%q<pry>, ["~> 0.10.4"])
  end
end

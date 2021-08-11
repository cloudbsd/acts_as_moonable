require_relative "lib/acts_as_moonable/version"

Gem::Specification.new do |spec|
  spec.name        = "acts_as_moonable"
  spec.version     = ActsAsMoonable::VERSION
  spec.authors     = ["Li Qi"]
  spec.email       = ["cloudbsd@qq.com"]
  spec.homepage    = "http://github.com/cloudbsd/acts_as_moonable"
  spec.summary     = "Acts As Moonable Gem."
  spec.description = "ActsAsMoonable gem provides extended methods for rails."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://github.com/cloudbsd/acts_as_moonable"
  spec.metadata["changelog_uri"] = "http://github.com/cloudbsd/acts_as_moonable/CHANGELOG.md"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency 'rails', ">= 5.2"
# spec.add_dependency "rails", "~> 6.1.3", ">= 6.1.3.2"
end

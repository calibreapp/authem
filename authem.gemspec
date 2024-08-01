require File.expand_path("../lib/authem/version.rb", __FILE__)

Gem::Specification.new do |spec|
  spec.name                  = "authem"
  spec.version               = Authem::VERSION
  spec.authors               = ["Paul Elliott", "Pavel Pravosud"]
  spec.email                 = ["paul@codingfrontier.com", "pavel@pravosud.com"]
  spec.summary               = "Authem authenticates them by email"
  spec.description           = "Authem provides a simple solution for email-based authentication"
  spec.homepage              = "https://github.com/paulelliott/authem"
  spec.license               = "MIT"

  spec.required_ruby_version = ">= 3.0.0"

  spec.files                 = Dir["CHANGELOG.md", "README.md", "LICENSE", "lib/**/**"]
  spec.require_path          = "lib"

  spec.add_dependency "activesupport",  ">= 7.1.3.4"
  spec.add_dependency "railties",       ">= 7.1.3.4"
  spec.add_dependency "bcrypt",         "~> 3.1.20"
end

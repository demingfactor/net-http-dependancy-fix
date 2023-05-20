# frozen_string_literal: true

require_relative "lib/net/http/dependancy/fix/version"

Gem::Specification.new do |spec|
  spec.name = "net-http-dependancy-fix"
  spec.version = Net::Http::Dependancy::Fix::VERSION
  spec.authors = ["Richie Khoo"]
  spec.email = ["evolve2k@gmail.com"]

  spec.summary = "Fixes net/http issues"
  spec.description = "Fixes some strange bugs that afflict ruby 2.6 to ruby 3.0 projects"
  spec.homepage = "https://github.com/demingfactor/net-http-depedency-fix"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/demingfactor/net-http-depedency-fix"
  spec.metadata["changelog_uri"] = "https://github.com/demingfactor/net-http-depedency-fix/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  # Gem Dependencies
  spec.add_dependency "net-http"
  spec.add_dependency "net-smtp"
  spec.add_dependency "net-imap"
  spec.add_dependency "uri"
  spec.add_dependency "mail", "~> 2.8.1"
end

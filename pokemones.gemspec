require_relative 'lib/pokemones/version'

Gem::Specification.new do |spec|
  spec.name          = "pokemones"
  spec.version       = Pokemones::VERSION
  spec.authors       = ["dgarciaap"]
  spec.email         = ["dgarcia24@ucol.mx"]

  spec.summary       = %q{A gem for encountering wild pokemon}
  spec.description   = %q{A gem for encountering wild pokemon}
  spec.homepage      = "https://github.com/dgarciaap/pokemones.git"
 # spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/dgarciaap/pokemones.git"
  spec.metadata["changelog_uri"] = "https://github.com/dgarciaap/pokemones.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_dependency "json"
end

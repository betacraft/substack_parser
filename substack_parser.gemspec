
Gem::Specification.new do |spec|
  spec.name          = "substack_parser"
  spec.version       = "0.1.0"
  spec.authors       = ["Mathew Thomas"]
  spec.email         = ["mathew@betacraft.com"]

  spec.summary       = %q{This gem is to help parse Substack exports.}
  spec.homepage      = "https://github.com/betacraft/substack_parser"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com/betacraft/substack_parser"
  spec.metadata["source_code_uri"] = "https://github.com/betacraft/substack_parser"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end

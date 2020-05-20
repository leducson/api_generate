
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "api_generate/version"

Gem::Specification.new do |spec|
  spec.name          = "api_generate"
  spec.version       = ApiGenerate::VERSION
  spec.authors       = ["Le Duc Son"]
  spec.email         = ["ducson.aptech@gmail.com"]

  spec.summary       = "Build file and config api for rails project"
  spec.description   = "Generate api gem"
  spec.homepage      = "https://github.com/leducson/api_generate"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/leducson/api_generate"
    spec.metadata["changelog_uri"] = "https://github.com/leducson/api_generate/releases"
    spec.metadata["bug_tracker_uri"] = "https://github.com/leducson/api_generate/issues"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir["lib/**/*.rb"]
  spec.bindir        = "bin"
  spec.executables   = ["api_generate"]
  spec.require_paths = ["lib"]
end

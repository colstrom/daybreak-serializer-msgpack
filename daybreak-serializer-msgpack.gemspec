Gem::Specification.new do |gem|
  tag = `git describe --tags --abbrev=0`.chomp

  gem.name          = 'daybreak-serializer-msgpack'
  gem.homepage      = 'https://github.com/colstrom/daybreak-serializer-msgpack'
  gem.summary       = 'Adds a MessagePack Serializer for Daybreak'

  gem.version       = "#{tag}"
  gem.licenses      = ['MIT']
  gem.authors       = ['Chris Olstrom']
  gem.email         = 'chris@olstrom.com'

  gem.cert_chain    = ['trust/certificates/colstrom.pem']
  gem.signing_key   = File.expand_path ENV.fetch 'GEM_SIGNING_KEY'

  gem.files         = `git ls-files -z`.split("\x0")
  gem.test_files    = `git ls-files -z -- {test,spec,features}/*`.split("\x0")
  gem.executables   = `git ls-files -z -- bin/*`.split("\x0").map { |f| File.basename(f) }

  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'daybreak', '~> 0.3', '>= 0.3.0'
  gem.add_runtime_dependency 'msgpack',  '~> 1.0', '>= 1.0.2'
end

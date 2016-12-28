Gem::Specification.new do |gem|
  gem.name        = 'daybreak-serializer-msgpack'
  gem.version     = `git describe --tags --abbrev=0`.chomp
  gem.licenses    = 'MIT'
  gem.authors     = ['Chris Olstrom']
  gem.email       = 'chris@olstrom.com'
  gem.homepage    = 'https://github.com/colstrom/daybreak-serializer-msgpack'
  gem.summary     = 'Adds a MessagePack Serializer for Daybreak'

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'daybreak', '~> 0.3', '>= 0.3.0'
  gem.add_runtime_dependency 'msgpack', '~> 1.0', '>= 1.0.2'
end

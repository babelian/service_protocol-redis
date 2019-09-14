require './lib/service_protocol/redis/version'

Gem::Specification.new do |s|
  s.name        = 'service_protocol-redis'
  s.version     = ServiceProtocol::Redis::VERSION

  s.summary     = 'Redis adapter for ServiceProtocol.'
  s.homepage    = 'https://github.com/babelian/service_protocol-redis'
  s.authors     = ['Zach Powell']
  s.email       = 'zach@babelian.net'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.5.3'

  s.files = Dir.glob('{lib}/**/*')
  s.require_paths = %w[lib]

  s.add_runtime_dependency 'service_protocol', '>= 1.1.0'

  s.add_runtime_dependency 'redis', '4.1.0'
  s.add_runtime_dependency 'redis-queue', '0.1.0'
  s.add_runtime_dependency 'request_store', '>= 1.4.1'

  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rack-test', '0.8.3'
  s.add_development_dependency 'rake', '12.3.2'
  s.add_development_dependency 'rspec', '3.7.0'
  s.add_development_dependency 'simplecov', '0.16.1'
end

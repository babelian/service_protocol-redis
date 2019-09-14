require 'service_protocol'

# ServiceProtocol
module ServiceProtocol
  # Redis Adapter
  module Redis
    autoload :Client,     'service_protocol/redis/client'
    autoload :Connection, 'service_protocol/redis/connection'
    autoload :Server,     'service_protocol/redis/server'
    autoload :VERSION,    'service_protocol/redis/version'
  end
end

# frozen_string_literal: true

require 'redis'
require 'redis/queue'
require 'redis-queue'

module ServiceProtocol
  module Redis
    # Redis Connection and Queue
    module Connection
      def redis
        @redis ||= begin
          ::Redis.new(
            url: ENV['REDIS_URL'] || 'redis://redis/0' # , logger: Logger.new(STDOUT)
          )
        end
      end

      def redis_queue
        @redis_queue ||= begin
          ::Redis::Queue.new(queue_name, "#{queue_name}:processing", redis: redis)
        end
      end

      def redis_error(error)
        redis.lpush "#{queue_name}:errors", JSON.dump(
          request: raw_request,
          error: error.inspect
        )
      end
    end
  end
end

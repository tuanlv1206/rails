require 'resque-scheduler'
Resque.redis = Redis.new(host: "localhost", port: "6379")

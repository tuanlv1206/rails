# Sidekiq.redis = Redis.new(host: "localhost", port: "6379")

Sidekiq.configure_server do |config|
  config.redis = { host: "localhost", port: "6379"}
  # config.redis = {:url => 'redis://localhost:6379'}
end
Sidekiq.configure_client do |config|
  config.redis = { host: "localhost", port: "6379"}
  # config.redis = {:url => 'redis://localhost:6379'}
end

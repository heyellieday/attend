if ENV["REDISCLOUD_URL"]

	Sidekiq.configure_server do |config|
	  config.redis = {url: ENV["REDISCLOUD_URL"]}
	end

	Sidekiq.configure_client do |config|
	  config.redis = {url: ENV["REDISCLOUD_URL"]}
	end

else
	Sidekiq.configure_server do |config|
	  config.redis = {url: 'redis://127.0.0.1:6379/0'}
	end

	Sidekiq.configure_client do |config|
	  config.redis = {url: 'redis://127.0.0.1:6379/0'}
	end
end
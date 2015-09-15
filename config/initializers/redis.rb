if ENV["REDISCLOUD_URL"]
    $redis = Redis.new(:url => ENV["REDISCLOUD_URL"]) 
else
	$redis = Redis.new(:url => 'redis://127.0.0.1:6379/0')
end
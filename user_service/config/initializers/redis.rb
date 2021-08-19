require 'redis'
require 'redis-namespace'

$redis = Redis::Namespace.new("my_redis", redis: Redis.new(:url => "redis://127.0.0.1", :db => 0, :port => 6376, :password => "itda"))

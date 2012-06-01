if platform?("ubuntu")
  package "redis-server"
else
  package "redis"
end


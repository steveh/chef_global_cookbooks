if platform?("ubuntu") || platform?("debian")
  package "redis-server"
else
  package "redis"
end

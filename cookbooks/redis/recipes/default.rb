if platform?("mac_os_x")
  package "redis"
else
  package "redis-server"
end


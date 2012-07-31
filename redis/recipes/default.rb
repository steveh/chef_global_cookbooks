include_recipe "current_version"

if platform?("ubuntu") || platform?("debian")
  package "redis-server"
else
  package "redis"

  if platform?("mac_os_x")
    current_version = package_current_version("redis")

    execute "cp /usr/local/Cellar/redis/#{current_version}/homebrew.mxcl.redis.plist /Library/LaunchAgents/"
    execute "launchctl load -w /Library/LaunchAgents/homebrew.mxcl.redis.plist"
  end
end

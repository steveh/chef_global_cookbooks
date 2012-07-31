if platform?("mac_os_x")
  # built-in
elsif platform?("ubuntu") || platform?("debian")
  package "git-core"
else
  package "git"
end

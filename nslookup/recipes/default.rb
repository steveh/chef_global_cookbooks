if platform?("mac_os_x")
  # built in
elsif platform?("ubuntu") || platform?("debian")
  package "dnsutils"
elsif platform?("freebsd")
  package "bind-tools"
else
  raise "not implemented"
end


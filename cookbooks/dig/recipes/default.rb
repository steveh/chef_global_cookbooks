if platform?("mac_os_x")
  # built in
elsif platform?("ubuntu")
  package "dnsutils"
elsif platform?("freebsd")
  package "bind-tools"
else
  raise "not implemented"
end

if platform?("mac_os_x")
  package "watch"
elsif platform?("ubuntu")
  package "procps"
elsif platform?("freebsd")
  # built in
else
  raise "not implemented"
end


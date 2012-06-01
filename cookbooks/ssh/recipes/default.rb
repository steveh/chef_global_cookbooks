if platform?("mac_os_x") || platform?("freebsd")
  # built in
else
  package "ssh"
end

if platform?("mac_os_x")
  # built in
else
  package "ntp"
end

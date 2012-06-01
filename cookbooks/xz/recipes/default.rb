if platform?("mac_os_x") || platform?("freebsd")
  # built in
elsif platform?("ubuntu")
  package "xz-utils"
else
  package "xz"
end


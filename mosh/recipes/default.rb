if platform?("mac_os_x")
  package "mobile-shell"
elsif platform?("freebsd")
  package "net/mosh"
else
  package "mosh"
end


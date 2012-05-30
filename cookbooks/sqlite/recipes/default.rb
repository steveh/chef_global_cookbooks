if platform?("mac_os_x")
  # built in
else
  package "sqlite3"
end

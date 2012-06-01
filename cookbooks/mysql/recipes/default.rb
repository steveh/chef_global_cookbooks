if platform?("mac_os_x")
  package "mysql"
elsif platform?("ubuntu")
  package "mysql-server-5.5"
elsif platform?("freebsd")
  package "mysql55-server"
else
  raise "not implemented"
end


if platform?("mac_os_x")
  package "mysql"
else
  package "mysql-server-5.5"
end


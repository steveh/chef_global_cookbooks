if platform?("mac_os_x")
  package "ack"
elsif platform?("ubuntu") || platform?("debian")
  package "ack-grep"
elsif platform?("freebsd")
  package "p5-ack"
else
  raise "not implemented"
end

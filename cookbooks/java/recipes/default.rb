if platform?("mac_os_x")
  # built in
elsif platform?("ubuntu")
  package "openjdk-6-jre"
  package "openjdk-6-jdk"
elsif platform?("freebsd")
  package "openjdk-7"
else
  raise "not implemented"
end


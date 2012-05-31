if platform?("mac_os_x")
  # built in
elsif platform?("ubuntu")
  package "openjdk-6-jre"
  package "openjdk-6-jdk"
else
  raise "not implemented"
end


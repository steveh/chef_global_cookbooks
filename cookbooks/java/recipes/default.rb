if platform?("mac_os_x")
  # built in
elsif platform?("ubuntu") || platform?("debian")
  package "openjdk-6-jre"
  package "openjdk-6-jdk"
elsif platform?("freebsd")
  package "openjdk7"
else
  raise "not implemented"
end


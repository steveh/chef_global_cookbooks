if platform?("ubuntu") || platform?("debian")
  package "virtualbox-guest-additions"
elsif platform?("freebsd")
  package "virtualbox-ose-additions"
else
  raise "not implemented"
end


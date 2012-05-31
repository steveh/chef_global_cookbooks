if platform?("ubuntu")
  package "virtualbox-guest-additions"
elsif platform?("freebsd")
  package "virtualbox-ose-additions"
else
  raise "not implemented"
end


if platform?("ubuntu")
  package "virtualbox-guest-additions"
else
  raise "not implemented"
end


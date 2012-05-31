if platform?("ubuntu")
  package "deluged"
elsif platform?("freebsd")
  package "deluge"
else
  raise "not implemented"
end


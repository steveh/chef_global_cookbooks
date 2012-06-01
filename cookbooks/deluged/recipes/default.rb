if platform?("ubuntu") || platform?("debian")
  package "deluged"
elsif platform?("freebsd")
  package "deluge"
else
  raise "not implemented"
end


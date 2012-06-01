if platform?("freebsd")
  package "fusefs-encfs"
else
  package "encfs"
end


if platform?("freebsd")
  package "fusefs-sshfs"
else
  package "sshfs"
end


if platform?("mac_os_x")
  package "git"
elsif platform?("ubuntu")
  package "git-core"
else
  package "git"
end


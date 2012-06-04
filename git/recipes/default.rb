if platform?("ubuntu") || platform?("debian")
  package "git-core"
else
  package "git"
end

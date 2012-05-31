if platform?("ubuntu")
  package "git-core"
else
  package "git"
end


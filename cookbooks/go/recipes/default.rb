if platform?("ubuntu") || platform?("debian")
  package "golang"
else
  package "go"
end


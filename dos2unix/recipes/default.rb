if platform?("freebsd")
  package "unix2dos"
else
  package "dos2unix"
end

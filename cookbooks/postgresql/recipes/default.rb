if platform?("freebsd")
  package "postgresql91-server"
else
  package "postgresql"
end

package "postgis"


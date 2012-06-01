if platform?("mac_os_x")
  # built in
elsif platform?("ubuntu")
  package "ruby1.9.3"
  package "ruby1.9.1-dev"
  package "build-essential"
  package "libxml2-dev"
  package "libxslt1-dev"
  package "libcurl4-openssl-dev"
  package "libyaml-dev"
elsif platform?("debian")
  package "ruby1.9.1"
  package "ruby1.9.1-dev"
  package "build-essential"
  package "libxml2-dev"
  package "libxslt1-dev"
  package "libcurl4-openssl-dev"
  package "libyaml-dev"
elsif platform?("freebsd")
  package "ruby19"
  package "libxml2"
  package "libxslt"
  package "libyaml"
else
  raise "not implemented"
end

gem_package "bundler"

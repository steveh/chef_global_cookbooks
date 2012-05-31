if platform?("mac_os_x")
  # built in
else
  package "ruby1.9.3"
  package "ruby1.9.1-dev"
  package "libxml2-dev"
  package "libxslt1-dev"
  package "libcurl4-openssl-dev"
  package "libyaml-dev"
end

gem_package "bundler"

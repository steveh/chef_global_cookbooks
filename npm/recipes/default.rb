package "curl"

# bash "install npm - package manager for node" do
#   cwd "/usr/local/src"
#   user "root"
#   code <<-EOF
#     mkdir -p npm-v#{node[:npm][:version]} && \
#     cd npm-v#{node[:npm][:version]}
#     curl -L http://registry.npmjs.org/npm/-/npm-#{node[:npm][:version]}.tgz | tar xzf - --strip-components=1 && \
#     make uninstall dev
#   EOF
#   not_if "#{node[:nodejs][:dir]}/bin/npm -v 2>&1 | grep '#{node[:nodejs][:npm]}'"
# end

puts "TODO"

directory "/usr/local" do
  user "root"
  group "wheel"
  mode "0755"
  action :create
end

execute "install homebrew" do
  command "curl -sfL https://github.com/mxcl/homebrew/tarball/master | tar zx -m --strip 1"
  cwd "/usr/local"
  not_if { File.exist? '/usr/local/bin/brew' }
end

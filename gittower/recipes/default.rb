directory "/usr/local" do
  user "root"
  group "wheel"
  mode "0755"
  action :create
end

directory "/usr/local/bin" do
  user "root"
  group "wheel"
  mode "0755"
  action :create
end

link "/usr/local/bin/gittower" do
  to "/Applications/Tower.app/Contents/MacOS/gittower"
end

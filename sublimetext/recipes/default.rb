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

if platform?("mac_os_x")
  link "/usr/local/bin/subl" do
    to "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl"
  end
else
  raise "Not implemented"
end

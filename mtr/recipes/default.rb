include_recipe "current_version"

package "mtr" do
  if platform?("mac_os_x")
    options "--no-gtk"
  end
end

if platform?("mac_os_x")
  current_version = package_current_version("mtr")

  execute "chown root:wheel /usr/local/Cellar/mtr/#{current_version}/sbin/mtr"
  execute "chmod u+s /usr/local/Cellar/mtr/#{current_version}/sbin/mtr"
end

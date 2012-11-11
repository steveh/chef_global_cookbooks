directory Chef::Config[:file_cache_path] do
  action :create
  recursive true
  mode "0775"
  owner "root"
  group "wheel"
end

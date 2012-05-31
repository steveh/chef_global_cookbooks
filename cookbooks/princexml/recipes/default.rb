if platform?("mac_os_x")
  package "princexml"
else
  version = "8.0"
  arch = "amd64"
  program = "prince-#{version}-linux-#{arch}-static"
  file = "#{program}.tar.gz"

  remote_file "/tmp/#{file}" do
    source "http://www.princexml.com/download/#{file}"
    mode "0644"
    checksum "09f3ce28c8210776fc8f67158e4151e5b6cf7fc11b04ee2735826ee1ba5a4fd8"
    action :create_if_missing
    notifies :run, "bash[install_program]", :immediately
  end

  bash "install_program" do
    user "root"
    cwd "/tmp"
    code <<-EOH
      tar -zxf #{file}
      cd #{program}
      ./install.sh
    EOH
    action :nothing
  end
end


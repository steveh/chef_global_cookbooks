include_recipe "current_version"

if platform?("freebsd")
  package "postgresql91-server"
else
  package "postgresql" do
    if platform?("mac_os_x")
      options "--without-ossp-uuid --no-python --no-perl"
    end
  end
end

package "postgis"

if platform?("mac_os_x")
  cookbook_file "/etc/sysctl.conf" do
    owner "root"
    group "wheel"
    mode "0755"
    source "sysctl.conf"
  end

  db_user = "steve"
  db_directory = "/usr/local/var/postgres"
  db_name = "template_postgis"

  directory db_directory do
    owner db_user
    group "wheel"
    mode "0700"
    action :create
  end

  file "#{db_directory}/server.log" do
    owner db_user
  end

  execute "initdb" do
    user db_user
    command "test -f #{db_directory}/PG_VERSION || /usr/local/bin/initdb #{db_directory}"
  end

  current_version = package_current_version("postgresql")

  execute "cp /usr/local/Cellar/postgresql/#{current_version}/homebrew.mxcl.postgresql.plist /Library/LaunchAgents/"
  execute "launchctl load -w /Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

  execute "createdb" do
    user db_user
    command "psql -h 127.0.0.1 --list | grep #{db_name} || createdb -h 127.0.0.1 -E utf8 -T template0 #{db_name}"
  end

  execute "postgis" do
    user db_user
    command "psql -h 127.0.0.1 -d #{db_name} -c \"CREATE EXTENSION IF NOT EXISTS postgis;\""
  end
end

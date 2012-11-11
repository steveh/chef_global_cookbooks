if platform?("mac_os_x")
  package "mysql"
elsif platform?("ubuntu") || platform?("debian")
  package "mysql-server-5.5"
elsif platform?("freebsd")
  package "mysql55-server"
else
  raise "not implemented"
end

if platform?("mac_os_x")
  include_recipe "current_version"

  db_user = "steve"
  db_directory = "/usr/local/var/mysql"

  directory db_directory do
    owner db_user
    group "wheel"
    mode "0700"
    action :create
  end

  # execute "mysql_install_db" do
  #   command "mysql_install_db --verbose --user=#{db_user} --basedir=\"$(brew --prefix mysql)\" --datadir=#{db_directory} --tmpdir=/tmp"
  # end

  # ruby_block "mysql_install_db" do
  #   block do
  #     active_mysql = Pathname.new("/usr/local/bin/mysql").realpath
  #     basedir = (active_mysql + "../../").to_s
  #     data_dir = "/usr/local/var/mysql"
  #     system("mysql_install_db --verbose --user=#{WS_USER} --basedir=#{basedir} --datadir=#{data_dir} --tmpdir=/tmp && chown #{WS_USER} #{data_dir}") || raise("Failed initializing mysqldb")
  #   end
  #   not_if { File.exists?("/usr/local/var/mysql/mysql/user.MYD")}
  # end

# execute "set the root password to the default" do
#   command "mysqladmin -uroot password #{DEFAULT_PIVOTAL_MYSQL_PASSWORD}"
#   not_if "mysql -uroot -p#{DEFAULT_PIVOTAL_MYSQL_PASSWORD} -e 'show databases'"
# end

# execute "insert time zone info" do
#   command "mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -uroot -p#{DEFAULT_PIVOTAL_MYSQL_PASSWORD} mysql"
#   not_if "mysql -uroot -p#{DEFAULT_PIVOTAL_MYSQL_PASSWORD} mysql -e 'select * from time_zone_name' | grep -q UTC"
# end

  current_version = package_current_version("mysql")

   cookbook_file "/Library/LaunchAgents/homebrew.mxcl.mysql.plist" do
    owner "root"
    group "wheel"
    mode "0755"
    source "homebrew.mxcl.mysql.plist"
  end

  execute "launchctl load -w /Library/LaunchAgents/homebrew.mxcl.mysql.plist"
end

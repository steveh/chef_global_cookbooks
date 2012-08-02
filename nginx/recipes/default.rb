# gem_package "passenger"

package "nginx" do
  if platform?("mac_os_x")
    # options "--with-passenger"
  end
end

# In the interest of allowing you to run `nginx` without `sudo`, the default
# port is set to localhost:8080.

# If you want to host pages on your local machine to the public, you should
# change that to localhost:80, and run `sudo nginx`. You'll need to turn off
# any other web servers running port 80, of course.

# You can start nginx automatically on login running as your user with:
#   mkdir -p ~/Library/LaunchAgents
#   cp /usr/local/Cellar/nginx/1.2.2/homebrew.mxcl.nginx.plist ~/Library/LaunchAgents/
#   launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist

# Though note that if running as your user, the launch agent will fail if you
# try to use a port below 1024 (such as http's default of 80.)

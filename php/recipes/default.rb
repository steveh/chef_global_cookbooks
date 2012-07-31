if platform?("mac_os_x")
  package "php54"
else
  package "php5"
end

raise "Incomplete package, see notes"

# To enable PHP in Apache add the following to httpd.conf and restart Apache:
#     LoadModule php5_module    /usr/local/Cellar/php54/5.4.4/libexec/apache2/libphp5.so

# The php.ini file can be found in:
#     /usr/local/etc/php/5.4/php.ini

# If pear complains about permissions, 'Fix' the default PEAR permissions and config:
#     chmod -R ug+w /usr/local/Cellar/php54/5.4.4/lib/php
#     pear config-set php_ini /usr/local/etc/php/5.4/php.ini

# If you have installed the formula with --with-fpm, to launch php-fpm on startup:
#     * If this is your first install:
#         mkdir -p ~/Library/LaunchAgents
#         cp /usr/local/Cellar/php54/5.4.4/homebrew-php.josegonzalez.php54.plist ~/Library/LaunchAgents/
#         launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist

#     * If this is an upgrade and you already have the homebrew-php.josegonzalez.php54.plist loaded:
#         launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist
#         cp /usr/local/Cellar/php54/5.4.4/homebrew-php.josegonzalez.php54.plist ~/Library/LaunchAgents/
#         launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist

# You may also need to edit the plist to use the correct "UserName".

# Please note that the plist was called 'org.php-fpm.plist' in old versions
# of this formula.

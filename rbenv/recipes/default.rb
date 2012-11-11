if platform?("mac_os_x")
  package "apple-gcc42"
  package "rbenv"
  package "ruby-build"
else
  raise "Not implemented"
end

versions_path = if platform?("mac_os_x")
  include_recipe "current_version"

  current_version = package_current_version("ruby-build")

  "/usr/local/Cellar/ruby-build/#{current_version}/share/ruby-build"
else
  raise "Not implemented"
end

["1.8.7-p370", "1.9.2-p0"].each do |version|
  cookbook_file File.join(versions_path, version) do
    source version
    mode "0644"
  end
end

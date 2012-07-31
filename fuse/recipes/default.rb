include_recipe "current_version"

if platform?("mac_os_x")
  package "fuse4x"
  package "fuse4x-kext"

  current_version = package_current_version("fuse4x")

  execute "cp -rfX /usr/local/Cellar/fuse4x-kext/#{current_version}/Library/Extensions/fuse4x.kext /Library/Extensions"
  execute "chmod +s /Library/Extensions/fuse4x.kext/Support/load_fuse4x"
else
  raise "Not implemented"
end

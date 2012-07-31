module CurrentVersionLibrary
  def package_current_version(package_name)
    resource = Chef::Resource::Package.new(package_name)
    package = Chef::Provider::Package::Homebrew.new(resource, run_context)
    current_version = package.send(:current_installed_version)
  end
end

class Chef
  class Recipe
    include CurrentVersionLibrary
  end
end

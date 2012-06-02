execute "update homebrew from github" do
  command "/usr/local/bin/brew update || true"
end

execute "tap" do
  command "/usr/local/bin/brew tap adamv/alt || true"
  command "/usr/local/bin/brew tap josegonzalez/php || true"
  command "/usr/local/bin/brew tap steveh/custom || true"
end

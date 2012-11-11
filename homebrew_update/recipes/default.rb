execute "clean up homebrew" do
  command "/usr/local/bin/brew cleanup || true"
end

execute "update homebrew from github" do
  command "/usr/local/bin/brew update || true"
end

homebrew_tap "adamv/alt"
homebrew_tap "josegonzalez/php"
homebrew_tap "steveh/custom"
homebrew_tap "homebrew/dupes"

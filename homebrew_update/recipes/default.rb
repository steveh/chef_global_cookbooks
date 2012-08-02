execute "update homebrew from github" do
  command "/usr/local/bin/brew update || true"
end

homebrew_tap "adamv/alt"
homebrew_tap "josegonzalez/php"
homebrew_tap "steveh/custom"

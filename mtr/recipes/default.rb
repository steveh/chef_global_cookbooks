package "mtr" do
  if platform?("mac_os_x")
    options "--no-gtk"
  end
end


package "aspell" do
  if platform?("mac_os_x")
    options "--lang=en"
  end
end

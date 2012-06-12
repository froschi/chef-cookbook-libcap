packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libcap2
  /
when "precise"
  packages |= %w/
    libcap2
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end

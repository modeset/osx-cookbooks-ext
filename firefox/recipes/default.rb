if node[:platform] =~ /mac_os_x/
  application 'Firefox' do
    source 'http://www.mozilla.org/en-US/products/download.html?product=firefox-14.0.1&os=osx&lang=en-US'
  end
end

if node[:platform] =~ /ubuntu/
  %w(xorg xvfb x11vnc firefox).each do |pkg|
    package pkg do
      action :install
    end
  end
end

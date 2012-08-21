if node[:platform] =~ /mac_os_x/
  application 'Firefox' do
    source 'http://download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/14.0.1/mac/en-US/Firefox%2014.0.1.dmg'
  end
end

if node[:platform] =~ /ubuntu/
  %w(xorg xvfb x11vnc firefox).each do |pkg|
    package pkg do
      action :install
    end
  end
end

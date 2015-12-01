pkgs = ['xorg-x11-fonts-75dpi', 'xorg-x11-fonts-Type1', 'libpng', 'libjpeg', 'libX11', 'libXext', 'libXrender']
pkgs.each do |pkg|
    package pkg do
        action :install
    end
end

remote_file "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm" do
    source "http://download.gna.org/wkhtmltopdf/0.12/0.12.2/wkhtmltox-0.12.2_linux-centos6-amd64.rpm"
    action :create
end

rpm_package "wkhtmltopdf" do
    source "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm"
    action :install
end

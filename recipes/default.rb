# On redhat 7 we require the old library to work
if node['platform_family'].to_s == "rhel" && node['platform_version'].to_i == 7
    package "libpng12"
end

package "libpng"

package "#{Chef::Config[:file_cache_path]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos#{node['platform_version'].to_i}-amd64.rpm" do
    action :nothing
end

remote_file "#{Chef::Config[:file_cache_path]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos#{node['platform_version'].to_i}-amd64.rpm" do
    source "#{node[:wkhtmltopdf][:link]}"
    not_if "which wkhtmltopdf"
    action :create_if_missing
    notifies :install, "package[#{Chef::Config[:file_cache_path]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos#{node['platform_version'].to_i}-amd64.rpm]", :immediately
end

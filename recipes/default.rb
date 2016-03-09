package "libpng"

package "#{Chef::Config[:file_cache_path]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos6-amd64.rpm" do
    action :nothing
end

remote_file "#{Chef::Config[:file_cache_path]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos6-amd64.rpm" do
    source "#{node[:wkhtmltopdf][:link]}"
    not_if "which wkhtmltopdf"
    action :create_if_missing
    notifies :install, "package[#{Chef::Config[:file_cache_path]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos6-amd64.rpm]", :immediately
end

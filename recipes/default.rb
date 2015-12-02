remote_file "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm" do
    source "http://download.gna.org/wkhtmltopdf/0.12/0.12.2/wkhtmltox-0.12.2_linux-centos6-amd64.rpm"
    not_if "which wkhtmltopdf"
    action :create_if_missing
end

package "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm" do
    subscribes :create_if_missing, resources(:remote_file => "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm")
    action :install
end

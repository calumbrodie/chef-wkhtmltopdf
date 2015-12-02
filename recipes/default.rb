remote_file "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm" do
    source "http://download.gna.org/wkhtmltopdf/0.12/0.12.2/wkhtmltox-0.12.2_linux-centos6-amd64.rpm"
    action :create_if_missing
end

package "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm" do
    not_if "which wkhtmltopdf"
    action :install
end

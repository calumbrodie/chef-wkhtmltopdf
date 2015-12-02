ruby_block 'install-wkhtmltopdf' do
  block do
    package "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm" do
        action :nothing
    end
  end
  action :nothing
end

remote_file "#{Chef::Config[:file_cache_path]}/wkhtmltox-0.12.2_linux-centos6-amd64.rpm" do
    source "http://download.gna.org/wkhtmltopdf/0.12/0.12.2/wkhtmltox-0.12.2_linux-centos6-amd64.rpm"
    not_if "which wkhtmltopdf"
    action :create_if_missing
    notifies :install, 'ruby_block[install-wkhtmltopdf]', :immediately
end

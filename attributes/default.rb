default[:wkhtmltopdf][:version] = "0.12.2"
default[:wkhtmltopdf][:folder] = "0.12"
default[:wkhtmltopdf][:host] = "https://github.com/usemarkup/wkhtmltopdf-rpm/raw/master"
default[:wkhtmltopdf][:link] = "http://#{node[:wkhtmltopdf][:host]}/#{node[:wkhtmltopdf][:folder]}/#{node[:wkhtmltopdf][:version]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos#{node['platform_version'].to_i}-amd64.rpm"


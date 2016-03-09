default[:wkhtmltopdf][:version] = "0.12.2"
default[:wkhtmltopdf][:folder] = "0.12"
default[:wkhtmltopdf][:host] = "download.gna.org"
default[:wkhtmltopdf][:link] = "http://#{node[:wkhtmltopdf][:host]}/wkhtmltopdf/#{node[:wkhtmltopdf][:folder]}/#{node[:wkhtmltopdf][:version]}/wkhtmltox-#{node[:wkhtmltopdf][:version]}_linux-centos6-amd64.rpm"


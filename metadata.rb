name 'wkhtmltopdf-centos'
license 'MIT Licence'
description      'wkhtmltopdf'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

maintainer 'Gavin Staniforth'
maintainer_email 'gavin@usemarkup.com'

depends 'compat_resource'

chef_version '>= 12.6' if respond_to?(:chef_version)

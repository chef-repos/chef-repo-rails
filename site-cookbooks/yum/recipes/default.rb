#
# Cookbook Name:: yum
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
yum_globalconfig '/etc/yum.conf' do
  cachedir node['yum']['main']['cachedir']
  keepcache node['yum']['main']['keepcache']
  debuglevel node['yum']['main']['debuglevel']
  exclude node['yum']['main']['exclude']
  logfile node['yum']['main']['logfile']
  exactarch node['yum']['main']['exactarch']
  obsoletes node['yum']['main']['obsoletes']
  proxy node['yum']['main']['proxy']
  installonly_limit node['yum']['main']['installonly_limit']
  installonlypkgs node['yum']['main']['installonlypkgs']
  installroot node['yum']['main']['installroot']
  distroverpkg node['yum']['main']['distroverpkg']
  releasever node['yum']['main']['releasever']
  action :create
end

execute "yum-update" do
  user "root"
  command "yum -y update"
  action :run
end

%w{gcc gcc-c++ make wget patch svn autoconf byacc sqlite-devel zlib-devel openssl-devel ImageMagick-devel mysql-devel telnet curl readline-devel ncurses-devel gdbm-devel  freetype-devel fontconfig-devel libxml2 libxml2-devel libxslt libxslt-devel}.each do |p|
  package p do
    action :install
  end
end

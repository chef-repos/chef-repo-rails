#
# Cookbook Name:: iptables
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
service "iptables" do
  action [:stop, :disable]
end

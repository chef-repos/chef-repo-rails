#
# Cookbook Name:: yum-epel
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{
    epel epel-debuginfo epel-source
      epel-testing epel-testing-debuginfo epel-testing-source
}.each do |repo|

  if node['yum'][repo]['managed']
    yum_repository repo do
      description node['yum'][repo]['description']
      baseurl node['yum'][repo]['baseurl']
      mirrorlist node['yum'][repo]['mirrorlist']
      gpgcheck node['yum'][repo]['gpgcheck']
      gpgkey node['yum'][repo]['gpgkey']
      enabled node['yum'][repo]['enabled']
      cost node['yum'][repo]['cost']
      exclude node['yum'][repo]['exclude']
      enablegroups node['yum'][repo]['enablegroups']
      failovermethod node['yum'][repo]['failovermethod']
      http_caching node['yum'][repo]['http_caching']
      include_config node['yum'][repo]['include_config']
      includepkgs node['yum'][repo]['includepkgs']
      keepalive node['yum'][repo]['keepalive']
      max_retries node['yum'][repo]['max_retries']
      metadata_expire node['yum'][repo]['metadata_expire']
      mirror_expire node['yum'][repo]['mirror_expire']
      priority node['yum'][repo]['priority']
      proxy node['yum'][repo]['proxy']
      proxy_username node['yum'][repo]['proxy_username']
      proxy_password node['yum'][repo]['proxy_password']
      repositoryid node['yum'][repo]['repositoryid']
      sslcacert node['yum'][repo]['sslcacert']
      sslclientcert node['yum'][repo]['sslclientcert']
      sslclientkey node['yum'][repo]['sslclientkey']
      sslverify node['yum'][repo]['sslverify']
      timeout node['yum'][repo]['timeout']
      action :create
    end
  end
end

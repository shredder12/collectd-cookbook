#
# Cookbook Name:: collectd
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "collectd" do
	action [:install]
end

template "/etc/collectd/collectd.conf" do
	source "collectd.conf.erb"
	notifies :restart, "service[collectd]"
end

service "collectd" do
	action [:enable, :start]
end

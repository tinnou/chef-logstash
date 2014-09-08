#
# Cookbook Name:: chef-logstash
# Recipe:: agent
#
# Copyright (C) 2014 Wouter de Vos
# 
# License: MIT
#

log("Another line of log: ANTOINE3") { level :warn }

template "/etc/logstash/conf.d/agent.conf" do
  source "logstash.conf.erb"
  variables( :config => node[:logstash][:agent] )
  notifies :restart, "service[logstash]"
  mode 0644
end
#
# Cookbook Name:: chef-logstash
# Recipe:: agent
#
# Copyright (C) 2014 Wouter de Vos
# 
# License: MIT
#

template "/etc/logstash/conf.d/agent.conf" do
  source "logstash.conf.erb"
  variables( :config => node[:logstash][:agent] )
  notifies :restart, "service[logstash]"
end
file "/etc/logstash/conf.d/agent.conf" do
  owner "logstash"
  group "logstash"
  mode "0644"
end
file "/etc/logstash/conf.d/agent_test.conf" do
  owner "logstash"
  group "logstash"
  mode "0644"
  content "Some test content!"
end

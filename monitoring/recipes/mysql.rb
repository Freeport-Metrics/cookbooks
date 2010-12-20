#
# Cookbook Name:: monitoring
# Recipe:: mysql

template "/etc/monit/conf.d/mysql.conf" do
  source "mysql.conf.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, "service[monit]"
end
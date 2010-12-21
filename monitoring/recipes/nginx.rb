#
# Cookbook Name:: monitoring
# Recipe:: nginx

template "/etc/monit/conf.d/nginx.conf" do
  source "nginx.conf.erb"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, "service[monit]"
end
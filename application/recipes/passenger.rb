# Cookbook Name:: application
# Recipe:: passenger

nginx_path = node[:application][:passenger][:nginx_path]

template "#{nginx_path}/conf/sites.d/#{node[:application][:passenger][:application_name]}.conf" do
  source "application.conf.erb"
  owner "root"
  group "root"
  mode 0644
  variables(
    :application_path => node[:application][:passenger][:application_path],
    :environment => node[:application][:passenger][:environment]
  )
end

service "passenger" do
  action [:restart]
end

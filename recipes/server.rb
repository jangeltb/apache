# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package "httpd"

file "/var/www/html/index.html" do
content "<!DOCTYPE html>
<html>
<head><title>Prueba server apache</title></head>
<body>
<h1>Hello, world</h1>
<h2>#{node['ipaddress']}</h2>
<h2>#{node['hostname']}</h2>
</body>
</html>"
end

service "httpd" do
action [:enable, :start]
end

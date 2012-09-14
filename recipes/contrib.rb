include_recipe "postgresql::server"

case node.platform
when "debian", "ubuntu"
  package "postgresql-contrib-#{node[:postgresql][:version]}"
end
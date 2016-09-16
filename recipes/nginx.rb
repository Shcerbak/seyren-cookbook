include_recipe 'nginx'

users = node['seyren']['htpasswd']['users']

if users.nil?
  file node['seyren']['htpasswd']['path'] do
    action :delete
  end
else
  users.each_pair do |name, opts|
    htpasswd node['seyren']['htpasswd']['path'] do
      user name
      password opts
    end
  end
end

template ::File.join(node['nginx']['dir'], 'sites-available', 'seyren') do
  source 'seyren-nginx.conf.erb'
  notifies :reload, 'service[nginx]'
  variables(:opts => node['seyren']['nginx'],
            :use_auth_basic => users || false)
end

nginx_site 'seyren'

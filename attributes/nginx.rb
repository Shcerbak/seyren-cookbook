default['nginx']['default_site_enabled'] = false

default['seyren']['nginx']['port'] = 80
default['seyren']['nginx']['host'] = node['fqdn']
default['seyren']['nginx']['aliases'] = []
default['seyren']['htpasswd']['path'] = '/etc/nginx/.htpasswd_seyren'

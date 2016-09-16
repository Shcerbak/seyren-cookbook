seyren = data_bag('seyren_conf') rescue []
unless seyren.empty?
  seyren.each do |item|
    db_details = data_bag_item('seyren_conf', item)
    db_details.each_pair do |key, value|
      node.override['seyren']['conf'][key] = value
    end
  end
end

directory node['seyren']['dir'] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

directory node['seyren']['conf']['SEYREN_LOG_PATH'] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

remote_file "#{node['seyren']['dir']}/seyren.jar" do
  owner 'root'
  group 'root'
  mode '0644'
  source node['seyren']['download_url']
  checksum node['seyren']['checksum']

  notifies :restart, 'service[seyren]'
end

template '/etc/init.d/seyren' do
  source 'seyren.sh.erb'
  owner 'root'
  group 'root'
  mode '0755'

  notifies :restart, 'service[seyren]'
end

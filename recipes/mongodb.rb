include_recipe 'apt'

repo = node['seyren']['mongodb']['repository']

apt_repository 'mongodb-org-3.2.list' do
  uri repo['uri']
  distribution repo['dist']
  components repo['repo']
  key repo['key']
  keyserver repo['keyserver']
  action :add
  deb_src false
end

package 'mongodb-org' do
  action :install
end

service 'mongod' do
  action [:start, :enable]
end

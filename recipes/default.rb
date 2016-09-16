include_recipe 'java' if node['seyren']['java']['install']
include_recipe 'seyren::mongodb' if node['seyren']['mongodb']['install']

include_recipe 'seyren::conf'

service 'seyren' do
  action [:enable, :start]
end

include_recipe 'seyren::nginx'
include_recipe 'seyren::crons'

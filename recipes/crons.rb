include_recipe 'cron'

cron 'seyren_logs' do
  hour '23'
  minute '24'
  command "find #{node['seyren']['conf']['SEYREN_LOG_PATH']}seyren*zip -type f -mtime +#{node['seyren']['cron']['logs']['days_before_clean']} -delete"
end

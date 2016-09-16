default['seyren']['conf'] = {
  'GRAPHITE_URL' => 'localhost',
  'SEYREN_URL' => node['fqdn'],
  'SEYREN_LOG_PATH' => '/var/log/seyren/',
  'SEYREN_LOG_FILE_LEVEL' => 'info',
  'GRAPHS_ENABLE' => true
}

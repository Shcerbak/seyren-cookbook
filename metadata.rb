name             'seyren'
maintainer       'Shcerbak'
maintainer_email 'shcerbak@gmail.com'
license          'apache 2'
description      'Install seyren'
long_description 'Install seyren alerting dashboard for Graphite'
issues_url       'https://github.com/shcerbak/seyren-cookbook/issues' if respond_to?(:issues_url)
source_url       'https://github.com/shcerbak/seyren-cookbook' if respond_to?(:source_url)
version          '0.1.0'

supports 'debian'

depends 'apt'
depends 'java'
depends 'nginx'
depends 'cron'
depends 'htpasswd'

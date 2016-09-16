This is description documentation for seyren cookbook.
This cookbook install seyren alerting dashboard for Graphite in very basic manner.
https://github.com/scobal/seyren

# Usage

Modify `default['seyren']['version']` and `default['seyren']['checksum']` to change seyren version.
Add `default[seyren']['htpasswd']['users'][user_name] = password` if you want to add basic authentication


# Requirements
* Java
* MondoDB 


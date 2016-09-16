# Description

This is description documentation for seyren cookbook.
This cookbook install seyren alerting dashboard for Graphite in very basic manner.
https://github.com/scobal/seyren

# Usage

Modify `default['seyren']['version']` and `default['seyren']['checksum']` to change seyren version.
Add `default[seyren']['htpasswd']['users'][user_name] = password` if you want to add basic authentication


# Requirements
* Java
* MondoDB


# Requirements

## Platform:

* debian

## Cookbooks:

* apt
* java
* nginx
* cron
* htpasswd

# Attributes

* `node['seyren']['conf']` -  Defaults to `{ ... }`.
* `node['seyren']['download_url']` -  Defaults to `https://github.com/scobal/seyren/releases/download/1.4.0/seyren-web-1.4.0.jar`.
* `node['seyren']['checksum']` -  Defaults to `1ce009dcff85fe636480372961723a7602cf43c6eb5f32d4a0cb810cbf09f059`.
* `node['seyren']['dir']` -  Defaults to `/opt/seyren`.
* `node['seyren']['cron']['logs']['days_before_clean']` -  Defaults to `30`.
* `node['seyren']['java']['install']` -  Defaults to `false`.
* `node['seyren']['mongodb']['install']` -  Defaults to `true`.
* `node['seyren']['mongodb']['repository']['uri']` -  Defaults to `http://repo.mongodb.org/apt/debian`.
* `node['seyren']['mongodb']['repository']['dist']` -  Defaults to `wheezy/mongodb-org/3.2`.
* `node['seyren']['mongodb']['repository']['repo']` -  Defaults to `[ ... ]`.
* `node['seyren']['mongodb']['repository']['key']` -  Defaults to `EA312927`.
* `node['seyren']['mongodb']['repository']['keyserver']` -  Defaults to `keyserver.ubuntu.com`.
* `node['nginx']['default_site_enabled']` -  Defaults to `false`.
* `node['seyren']['nginx']['port']` -  Defaults to `80`.
* `node['seyren']['nginx']['host']` -  Defaults to `node['fqdn']`.
* `node['seyren']['nginx']['aliases']` -  Defaults to `[ ... ]`.
* `node['seyren']['htpasswd']['path']` -  Defaults to `/etc/nginx/.htpasswd_seyren`.

# Recipes

* seyren::conf
* seyren::crons
* seyren::default
* seyren::mongodb
* seyren::nginx

# License and Maintainer

Maintainer:: Shcerbak (<shcerbak@gmail.com>)
Source:: https://github.com/shcerbak/seyren-cookbook
Issues:: https://github.com/shcerbak/seyren-cookbook/issues

License:: apache 2

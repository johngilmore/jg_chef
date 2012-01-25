#
# Cookbook Name:: johngilmore
# Recipe:: setup_johngilmore
#
# Copyright 2012, RightScale <john@rightscale.om>
#
# All rights reserved - Do Not Redistribute
#


package_name = value_for_platform(
"centos" => {"default" => "httpd"},
"ubuntu" => {"default" => "apache2"}
)


rs_utils_marker :begin

log "We would have installed #{package_name} if we provided that variable to a package provider"

log "RightScale Rulz! - logging what I want"
::Chef::log.info("info")
::Chef::log.warn("warn")
::Chev::Log.debug("debug")

package "tmux"

if node[:platform] == 'centos'
        log "This is a centos box"
elseif node[:platform] == 'ubuntu'
        log "This is an ubuntu box"
end

log "See the content of node[:platform] is #{node[:platform]}"

rs_utils_marker :end

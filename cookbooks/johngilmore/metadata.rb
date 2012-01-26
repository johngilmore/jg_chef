maintainer       "RS"
maintainer_email "john@rightscale.com"

description      "Installs/Configures johngilmore"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

depends "rs_utils"

supports "ubuntu"

recipe "::jg_chef_johngilmre", ""

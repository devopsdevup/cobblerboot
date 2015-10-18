current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "sysadmin"
client_key               "#{current_dir}/sysadmin.pem"
validation_client_name   "example-validator"
validation_key           "#{current_dir}/example-validator.pem"
chef_server_url          "https://192.168.150.2/organizations/example"
syntax_check_cache_path  "#{ENV['HOME']}/.chef/syntaxcache"
cookbook_path            ["#{current_dir}/../cookbooks"]

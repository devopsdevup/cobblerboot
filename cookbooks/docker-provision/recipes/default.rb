#
# Cookbook Name:: docker-provision
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
require 'chef/provisioning/docker_driver'

with_driver 'docker'

with_chef_server "https://192.168.150.2/organizations/example",
  :client_name => Chef::Config[:node_name],
  :signing_key_filename => Chef::Config[:client_key]

machine 'centos-web-docker1' do
    recipe 'apache2::default'

    machine_options :docker_options => {
      :base_image => {
          :name => 'centos',
          :repository => 'centos',
          :tag => 'centos6'
      },
      :command => '/usr/sbin/httpd -DFOREGROUND',

      :ports => "8880:80",
    },
      :convergence_options => {
        :ssl_verify_mode => 'verify_none'
      }
end

machine 'centos-ssh-docker1' do
    recipe 'openssh::default'

    machine_options :docker_options => {
      :base_image => {
          :name => 'centos',
          :repository => 'centos',
          :tag => 'centos6'
      },
      :command => '/usr/sbin/sshd -D',

      :ports => "8822:22",
    },
      :convergence_options => {
        :ssl_verify_mode => 'verify_none'
      }


end

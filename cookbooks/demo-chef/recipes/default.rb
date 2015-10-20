#
# Cookbook Name:: demo-chef
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

group 'demo' do
  action :create
  gid '6111'
end

# we create user 'jsmith' into the provisioned machine
user 'jsmith' do
  comment 'Created by Chef'
  uid '6111'
  gid '6111'
  home '/home/jsmith'
  shell '/bin/bash'
  password '$6$3ErpigHW8NcF$2/YxCkxwzCg32mEsuCZkjyNGjCBLd6ktDAbMqpJZAVeKwSA3UG11SbSP7c0voamolr6Q9qNcdDKphrzB3VkPB.'
end

# and we show the chef equivalent of: mkdir /tmp/demo && chown jsmith:demo /tmp/demo && chmod 755 /tmp/demo 
directory '/tmp/demo' do
  owner 'jsmith'
  group 'demo'
  mode '0755'
  action :create
end

# 2nd example 'Mrs. Smith'
user 'janesmith' do
  comment 'Created by Chef'
  uid '6112'
  gid '6111'
  home '/home/janesmith'
  shell '/bin/bash'
  password '$6$3ErpigHW8NcF$2/YxCkxwzCg32mEsuCZkjyNGjCBLd6ktDAbMqpJZAVeKwSA3UG11SbSP7c0voamolr6Q9qNcdDKphrzB3VkPB.jane'
end

# and we show the chef equivalent of: mkdir /tmp/demo && chown jsmith:demo /tmp/demo && chmod 755 /tmp/demo 
directory '/tmp/demojane' do
  owner 'janesmith'
  group 'demo'
  mode '0755'
  action :create
end

# and then we show the installation of an rpm, in this case 'tcsh'
remote_file '/tmp/tcsh-6.18.01-7.el7.x86_64.rpm' do
  source 'http://mirror.centos.org/centos/7/os/x86_64/Packages/tcsh-6.18.01-7.el7.x86_64.rpm'
  mode '0755'
end

rpm_package "tcsh" do
    source "/tmp/tcsh-6.18.01-7.el7.x86_64.rpm"
    action :install
end

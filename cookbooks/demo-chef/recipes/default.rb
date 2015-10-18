#
# Cookbook Name:: demo-chef
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user 'jsmith' do
  comment 'Created by Chef'
  uid '6111'
  gid '6111'
  home '/home/jsmith'
  shell '/bixn/bash'
  password '$6$3ErpigHW8NcF$2/YxCkxwzCg32mEsuCZkjyNGjCBLd6ktDAbMqpJZAVeKwSA3UG11SbSP7c0voamolr6Q9qNcdDKphrzB3VkPB.'
end

directory '/tmp/demo' do
  owner 'sysadmin'
  group 'sysadmin'
  mode '0755'
  action :create
end

package 'csh' do
  action :install
end

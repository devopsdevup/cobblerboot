openssh Cookbook CHANGELOG
==========================
This file is used to list changes made in each version of the openssh cookbook.

1.5.2 (2015-06-29)
------------------
- Use the complete path to sshd when verifying the config file since sbin may not be in the path

1.5.0 (2015-06-24)
------------------
- Perform a config syntax check before restarting the sshd so we don't break remote access to hosts
- Add support for Ubuntu 15.04+ with systemd
- Added a chefignore file
- Added Gitter badge for asking questions in a Gitter chat room

1.4.0 (2015-05-01)
-------------------
- #42 - Fixed support for SmartOS
- #46 - Correct ArchLinux service name
- #43 - Correct OpenSSH server package name on RHEL, Fedora
- #31 - Allow included iptables rule to use the same port number if defined in attributes.
- #41 - Fix default recipe order
- #47 - Fix up iptables rule
- #49 - Fixed the print_last_log attribute in the Readme
- Updated Test Kitchen config with all supported platforms
- Updated Test Kitchen / Foodcritic / Rubocop / Berkshelf depedencies in the Gemfile
- Replaced Travis Ruby 1.9.3/2.0.0 testing with 2.1.5/2.2.0
- Resolved all Rubocop warnings

v1.3.4 (2014-04-23)
-------------------
- [COOK-4576] - No way to override `AuthorizedKeysFile`
- [COOK-4584] - Use Upstart on Ubuntu 12.04
- [COOK-4585] - skip match block in template if empty or unset
- [COOK-4586] OpenSSH Gentoo support


v1.3.2
------
### Bug
- **[COOK-3995](https://tickets.chef.io/browse/COOK-3995)** - sshd_config template needs ordering
- **[COOK-3910](https://tickets.chef.io/browse/COOK-3910)** - ssh fails to start in Ubuntu 13.10
- **[COOK-2073](https://tickets.chef.io/browse/COOK-2073)** - Add support for Match block


v1.3.0
------
### Improvement
- **[COOK-3644](https://tickets.chef.io/browse/COOK-3644)** - Add FreeBSD support
- **[COOK-2517](https://tickets.chef.io/browse/COOK-2517)** - Add hash support
- **[COOK-2000](https://tickets.chef.io/browse/COOK-2000)** - Make mode of sshd_config a configurable option

### Bug
- **[COOK-3558](https://tickets.chef.io/browse/COOK-3558)** - Fix RSA Server Config Options
- **[COOK-3557](https://tickets.chef.io/browse/COOK-3557)** - Fix PubkeyAuthentication option


v1.2.2
------
### Bug
- **[COOK-3304](https://tickets.chef.io/browse/COOK-3304)** - Fix error setting Dynamic `ListenAddresses`

v1.2.0
------
### Improvement
- [COOK-2647]: `port_ssh` iptables template has no corresponding recipe

v1.1.4
------
- [COOK-2225] - Add platform_family suse

v1.1.2
------
- [COOK-1954] - Fix attribute camel case to match `man sshd_config`
- [COOK-1889] - SSH restarting on each chef run due to template changes

v1.1.0
------
- [COOK-1663] - Configurable ListenAddress based off list of interface names
- [COOK-1685] - Make default sshd_config value more robust

v1.0.0
------
- [COOK-1014] - Templates for ssh(d).conf files.

v0.8.1
------
- Current public release

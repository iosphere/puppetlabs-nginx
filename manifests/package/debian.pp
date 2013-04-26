# Class: nginx::package::debian
#
# This module manages NGINX package installation on debian based systems
#
# Parameters:
#
# There are no default parameters for this class.
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# This class file is not called directly
class nginx::package::debian {

  # Install nginx from the more up-to-date official repository
  package {
    'nginx':
      ensure  => '1.4.0-1~lucid',
      require => Apt::Source['nginx'],
  }

  apt::source {
    'nginx':
      location   => 'http://nginx.org/packages/ubuntu/',
      repos      => 'nginx',
      key_source => 'http://nginx.org/keys/nginx_signing.key',
      key        => '4C2C85E7',
  }

}

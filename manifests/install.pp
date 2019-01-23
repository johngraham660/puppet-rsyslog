# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::install
class rsyslog::install inherits rsyslog {

  package { 'rsyslog':
    ensure => 'installed',
    name   => 'rsyslog',
  }
}

# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::service
class rsyslog::service inherits rsyslog {

  service { 'rsyslog':
    ensure  => 'running',
    enabled => true,
  }
}

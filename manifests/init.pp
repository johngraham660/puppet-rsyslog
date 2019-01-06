# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog
class rsyslog (

  $rsyslog_service_enable = $rsyslog::params::rsyslog_service_enable,
  $rsyslog_service_ensure = $rsyslog::params::rsyslog_service_ensure,

) inherits rsyslog::params {

  include rsyslog::install
  include rsyslog::config
  include rsyslog::service

}

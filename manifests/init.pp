# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog
class rsyslog (

  Boolean $rsyslog_service_enable,
  Enum['running', 'stopped'] $rsyslog_service_ensure,
  String[1] $rsyslog_config_rsyslogserver,

) {

  include rsyslog::install
  include rsyslog::config
  include rsyslog::service

}

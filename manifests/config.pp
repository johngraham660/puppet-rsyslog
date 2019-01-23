# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include rsyslog::config
class rsyslog::config inherits rsyslog {

  file { 'rsyslog.conf':
    ensure  => file,
    path    => '/etc/rsyslog.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template('rsyslog/rsyslog.epp'),
    notify  => Service['rsyslog'],
    require => Package['rsyslog'],
  }
}

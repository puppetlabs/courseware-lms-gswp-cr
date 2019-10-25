# @summary A profile to install and configure haproxy server
#
# A profile (wrapper) class to install and configure haproxy to 
# use in the classroom environment during the capstone by the 
# instructor.
#
# @example
#   include profile::app::haproxy::server
class profile::app::haproxy::server (
  String $listen_service = 'web00',
) {
  include ::haproxy
  haproxy::listen { $listen_service:
    collect_exported => true,
    ipaddress        => $facts['ipaddress'],
    ports            => '80',
  }
}

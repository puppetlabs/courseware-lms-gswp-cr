# Pass the servers in as an array
class profile::time (
  Optional[Array[String]] $servers = undef,
) {
  case $::kernel {
    'windows': {
      class { 'winntp': servers => $servers, }
    }
    default: {
      class { 'ntp': servers => $servers, }
    }
  }
}

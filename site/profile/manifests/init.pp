# Pass the servers in as an array
class time (
#  Optional[Array[String]] $servers = undef,
) {

  $servers = ['time.nist.gov']
  case $::kernel {
    'windows': {
      class { 'winntp': servers => $servers, }
    }
    default: {
      class { 'ntp': servers => $servers, }
    }
  }
}
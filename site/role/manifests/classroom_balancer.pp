# @summary classroom load balancer for Practitioner Capstone
#
# This Role is for the classroom proxy server in practitioner
# This Role is the server for the instructor to spin up for the students
# prior to the Capstone exercise
#
# @example
#   include role::classroom_balancer
class role::classroom_balancer {
  include profile::security_baseline
  include profile::app::haproxy::server
}

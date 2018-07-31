class profile::baseline::linux::ssh_config {

    class{ '::ssh':
      permit_root_login            => 'no',
      sshd_password_authentication => 'no',
      sshd_client_alive_interval   => '3600',
      sshd_client_alive_count_max  => '0',
    }
}

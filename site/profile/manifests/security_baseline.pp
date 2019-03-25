class profile::security_baseline {
# OS-specific
  case $facts['kernel'] {
    'windows': {
      include profile::baseline::windows::firewall
    }
    'Linux': {
      include profile::baseline::linux::ssh_config
    }
    default: {
    fail('Unsupported operating system!')
    }
  }
}

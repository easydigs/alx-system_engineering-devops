# Enable holberton user and open a file without any error message.

# increase hard file limit for holberton user.
exec {'increase-hard-file-limit-for-holberton-user':
  command => "sed -i '/^holberton hard/s/4/50000/' /etc/security/limits.conf",
  path    => '/usr/bin/env/:/bin/'
}

# increase soft file limit for holberton user.
exec {'increase-soft-file-limit-for-holberton-user':
  command => "sed -i '/^holberton soft/s/4/50000/' /etc/security/limits.conf",
  path    => '/usr/bin/env/:/bin'
}

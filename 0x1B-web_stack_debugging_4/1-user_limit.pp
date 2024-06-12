# Change the OS configuration so that it is possible to login with the
# holberton user and open a file without any error message.

# increase hard file limit for holberton user.
exec {'increase-hard-file-limit-for-holberton-user':
  command => 'sed -i "s/holberton hard/4/50000/" /etc/security/limits.conf',
  path    => '/usr/bin/env/:/bin/:/usr/bin/:/usr/sbin/'
}

# increase soft file limit for holberton user.
exec {'increase-soft-file-limit-for-holberton-user':
  command => 'sed -i "s/holberton soft/5/50000/" /etc/security/limits.conf',
  path    => '/usr/bin/env/:/bin/:/usr/bin/:/usr/sbin/'
}

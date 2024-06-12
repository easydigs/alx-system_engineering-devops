# Change the OS configuration so that it is possible to login with the
# holberton user and open a file without any error message.

# increase hard file limit for holberton user.
exec {'increase-hard-file-limit-forholberton-user':
  command => 'sed -i "/^holberton hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/:/bin/'
}

# increase soft file limit for holberton user.
exec {'increase-soft-file-limit-forholberton-user':
  command => 'sed -i "/^holberton hard/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/:/bin/'
}

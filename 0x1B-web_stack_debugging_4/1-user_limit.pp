#increase limit for Holberton user.

# Increase hard and soft file limit for Holberton user.
exec { 'increase-hard-file-limit-for-holberton-user':
  command => 'sed -i -e "/holberton/s/5/20/" -e "/holberton/s/4/20/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

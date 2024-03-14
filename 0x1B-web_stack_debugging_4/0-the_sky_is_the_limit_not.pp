#Web stack debugging

#Increase number of default file
exec {'fix--for-nginx':
  #Script fix
  command => "sed -i 's/15/unlimited/' /etc/default/nginx && service nginx restart",
  #Paths to cmds
  path => '/usr/bin:/bin:/usr/local/bin/',
}

#Web stack debugging
exec {'fix--for-nginx':
	command	=> "sed -i 's/15/unlimited/' /etc/default/nginx && service nginx restart",
	path => '/usr/bin:/bin'
}

class apache2 {

$sanconf = "/etc/apache2/san-httpd.conf"

package { 'apache2':
	 ensure => installed 
	}

service { 'apache2':
	 ensure => running,
	 require => Package[apache2]
	}

file { $sanconf:
	ensure => present,
	source => "puppet:///modules/apache2/san-httpd.conf"
      }
}

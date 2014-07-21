class ntp {

package { 'ntp':
	 ensure => installed
	}

case $operatingsystem {
	debian: {
	}
}

service {
	
	}
}

class ssh {

$sshconf = '/etc/ssh/sshd_config'

package {'ssh':
	 ensure => installed
	}

service {'sshd':
	 ensure => running,
	 enable => true,
         require => Package[ssh],
	 subscribe => File[ssh-conf]
	}

file {$sshconf:
	ensure => present,
	mode => 600,
	source => "puppet:///modules/ssh/sshd_config",
	alias => ssh-conf
     }
}

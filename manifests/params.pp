class tomcat::params {
	case $::os['family'] {
		'Debian': {
			$user='tomcat7'
			$group='tomcat7'
			$packages=['tomcat7']
			$service_name='tomcat7'
			$config_path='/etc/tomcat7/tomcat.conf'
			$deploy_path='/var/lib/tomcat7/webapps'
		}
		'RedHat': {
			$user='tomcat'
			$group='tomcat'
			$packages=['tomcat']
			$service_name='tomcat'
			$config_path='/etc/tomcat/tomcat.conf'
			$deploy_path='/var/lib/tomcat/webapps'
		}
	}
	$java_home='/usr/lib/jvm/openjdk-6-jdk'
	$java_opts='-Djava.awt.headless=true -Xmx128m -XX:+UseConcMarkSweepGC'	
	$service_state=running
}

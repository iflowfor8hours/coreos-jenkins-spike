class { 'jenkins::slave':
  masterurl                => 'https://jenkins.myhost.com',
  slave_user               => 'jenkins',
  slave_mode               => 'exclusive',
  ui_user                  => 'jenkins_user',
  ui_pass                  => '$JENKINS_PASS',
  disable_ssl_verification => true,
}

class { 'python':
  version    => 'system',
  pip        => true,
  virtualenv => true,
}

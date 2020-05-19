pipeline {
  agent {
    docker {
      image 'ansnode:latest'
      args '''-v /var/run/docker.sock:/var/run/docker.sock
-v /opt/jenkins/workspace/jenkins-test_master/:/data
-v /etc/passwd:/etc/passwd
-v /etc/group:/etc/group
##-e HOME=/data
-e ANSIBLE_HOST_KEY_CHECKING=False
-e USER=ansible
-v /tmp:/opt/jenkins'''
    }
  }
    
  stages {
    stage('List') {
      steps {
        sh 'ansible --version'
#       ansiblePlaybook(playbook: 'playbook.yml', credentialsId: 'vmsnessus', disableHostKeyChecking: true, inventory: 'hosts', colorized: true)
      }
    }
  }
}

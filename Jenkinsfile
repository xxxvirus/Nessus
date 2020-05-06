pipeline {
  agent {
    docker {
      image 'ansible/centos7-ansible:stable'
      args '''-v /var/run/docker.sock:/var/run/docker.sock
              -v /opt/jenkins/workspace/jenkins-test_master/:/data
              -v /etc/passwd:/etc/passwd
              -v /etc/group:/etc/group
              -e HOME=/data
              -e ANSIBLE_HOST_KEY_CHECKING=False
              -e USER=ansible
              -v /tmp:/opt/jenkins'''
    }

  }
  stages {
    stage('List') {
      steps {
        ansiblePlaybook(playbook: 'playbook.yml', credentialsId: 'vmsnessus5', disableHostKeyChecking: true, inventory: 'hosts', colorized: true)
      }
    }
  }

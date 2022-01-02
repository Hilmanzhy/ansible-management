Ansible Version 2.9.6 the solution to automate and deployment IT Infrastructure at Cloud Platform.

edit your hosts file in /etc/ansible/hosts

example:
  1. default

     [server]

     172.18.10.1

  2. multiple ip

     [server]

     172.18.10.1

     172.18.10.2

     ...

     ...

  3. custom user, password or port server

     [server]

     172.18.10.1

     ...

     ...

     [server:vars]

     ansible_ssh_user=ubuntu

     ansible_sudo_pass=ubuntu

     ansible_ssh_private_key_file=/path/yourfile.pem

     absible_python_interpreter=/usr/bin/python3

edit your configuration in /etc/ansible/ansible.cfg

Some example to deploy and configuration cloud platform with ansible command:

  1. ansible -m ping host

  2. ansible host -m shell -a 'command'

  3. ansible-playbook yourplaybook.yml

  4. ansible-playbook yourplaybook.yml -t your_tags

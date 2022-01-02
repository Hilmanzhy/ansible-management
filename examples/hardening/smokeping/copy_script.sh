- hosts: all-gcp
  gather_facts: no
  tasks:
    - name: upload
      become: true
      copy:
        src: /home/anonym/immobi/Smokeping/Code/parse_rrd.sh
        dest: /home/user.supernet/smokeping/parse_rrd.sh
        owner: user.supernet
        group: user.supernet
        mode: 0777

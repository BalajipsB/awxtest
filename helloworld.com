---
- name: "executing first play on host"
  hosts: all
  
  tasks:
  - name: "Display message on host"
    command: echo "Hello team what's up !"
    register: message
    
  - debug: 
      var: message.stdout

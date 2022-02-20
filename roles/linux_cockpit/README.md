linux_cockpit
=========

Install Cockpit.

Requirements
------------

None.

Role Variables
--------------

- ```use_ssl_certificate``` (boolean)

  If you have SSL certificate you want to use with Cockpit, set this to ```true```.

  By default, Ansible will look for a FQDN.crt and FQDN.key files in the certificates folder at the root of the project. You can customize this in ```Install SSL certificate``` tasks block.

- ```cockpit_port``` (int)

  Specify port for Cockpit to use. Defaults to 9090.

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: ../roles/linux_cockpit
          vars:
            use_ssl_certificate: false

License
-------

GNU General Public License v3.0

Author Information
------------------
Daniel Allen.

https://github.com/a118n

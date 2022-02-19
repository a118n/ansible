Role Name
=========

Base role for all Linux servers.

Requirements
------------

None.

Role Variables
--------------

- ```use_proxy``` (boolean)

  If server requires proxy to connect to the internet, you shoud enable this to configure apt/dnf/git/etc to use it.

- ```proxy``` (string)

  Proxy address to use when ```use_proxy``` is set to ```true```

- ```use_ssl_certificate``` (boolean)

  If you have SSL certificate for the server and want to install it, set this to ```true```

  By default, ansible will look for a FQDN.crt and FQDN.key files in the certificates folder at the root of the project. You can customize this in ```Install SSL certificate``` tasks block.

- ```join_domain``` (boolean)

  Whether to join server to the domain (AD), or not.

  NOTE: Needs customizing the ```Domain Tasks``` block and ```files/realm-join.sh``` script with your actual domain parameters!

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: linux
      roles:
        - role: ../roles/linux_base
          vars:
            use_proxy: false
            install_certificate: false
            join_domain: false


License
-------

GNU General Public License v3.0

Author Information
------------------

Daniel Allen.

https://github.com/a118n

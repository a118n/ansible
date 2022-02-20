linux_haproxy
=========

Install HAProxy.

Requirements
------------

None.

Role Variables
--------------

- ```haproxy_version```

  Which version to install.

- ```use_ssl```

  Whether to use SSL (requires certificate).

- ```ssl_cert_filename```

  Certificate file name to use if ```use_ssl``` is set to ```true```.

- ```balance_algorithm```

  Specify the load balancing algorithm to be used in a backend.
  More info: https://cbonte.github.io/haproxy-dconv/2.4/configuration.html#4.2-balance

- ```hash_type```

  If using source/uri/url_param balance algorithms, specify hash type.
  More info: https://cbonte.github.io/haproxy-dconv/2.4/configuration.html#hash-type


- ```backend_servers```

  A list of backend server objects with name and ip.

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: ../roles/linux_haproxy
          vars:
            haproxy_version: 2.4.13
            use_ssl: false
            balance_algorithm: source
            hash_type: consistent
            backend_servers:
              - { name: test-srv-03, ip: 192.168.122.47:80 }
              - { name: test-srv-04, ip: 192.168.122.85:80 }


License
-------

GNU General Public License v3.0

Author Information
------------------

Daniel Allen.

https://github.com/a118n

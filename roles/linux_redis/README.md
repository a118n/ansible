linux_redis
=========

Install Redis.

Requirements
------------

None.

Role Variables
--------------

- ```redis_version``` (string)

  Version of Redis to install.

- ```redis_port``` (int)

  Specify port which should be used by Redis. Default is 6379.

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: ../roles/linux_redis
          vars:
            redis_version: 6.2.6
            redis_port: 6379

License
-------

GNU General Public License v3.0

Author Information
------------------

Daniel Allen.

https://github.com/a118n

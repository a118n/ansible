Role Name
=========

Install PostgreSQL.

Requirements
------------

None.

Role Variables
--------------

- ```postgresql_version```

  Which version (major) to install.

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: ../roles/linux_postgresql
          vars:
            postgresql_version: 14

License
-------

GNU General Public License v3.0

Author Information
------------------

Daniel Allen.

https://github.com/a118n

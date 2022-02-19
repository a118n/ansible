Role Name
=========

Install MariaDB.

Requirements
------------

None.

Role Variables
--------------

- ```mariadb_version```

  Which version to install.

- ```mariadb_root_password```

  Root user password in the DB.

Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
        roles:
            - role: ../roles/linux_mariadb
              vars:
                mariadb_version: 10.6
                mariadb_root_password: MyPassword123

License
-------

GNU General Public License v3.0

Author Information
------------------

Daniel Allen.

https://github.com/a118n

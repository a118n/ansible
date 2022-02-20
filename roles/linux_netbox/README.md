linux_netbox
=========

Install NetBox.

Requirements
------------

None.

Role Variables
--------------

- ```netbox_db_name```

  Name of the database which will be created for NetBox.


- ```netbox_db_user```

  Name of the DB user (role) which will be created for NetBox.


- ```netbox_db_user_password```

  Password for the DB user (role).


- ```netbox_secret_key```

  Secret key, which can be generated via ```generate_secret_key.py``` script in NetBox repository.


- ```netbox_admin_username```

  Username for default admin user in NetBox.


- ```netbox_admin_password```

  Password for default admin user.


- ```netbox_admin_email```

  Email for default admin user.

- ```netbox_timezone```

  Specify timezone (in tz database format) which will be used by NetBox.


- ```redis_port```

  Port used by local installation of Redis.


Dependencies
------------

None.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
        - role: ../roles/linux_netbox
          vars:
            netbox_db_name: netbox
            netbox_db_user: netboxuser
            netbox_db_user_password: Qazwsx123
            netbox_secret_key: NRgpUk3IMZVJq25Bz9!YNrgSUO7m)BouSw#eB-ZO4Hk2gnzMW-
            netbox_admin_username: admin
            netbox_admin_password: MyPassword123
            netbox_admin_email: noreply-netbox@mail.com
            netbox_timezone: Europe/Moscow
            redis_port: 6379

License
-------

GNU General Public License v3.0

Author Information
------------------

Daniel Allen.

https://github.com/a118n

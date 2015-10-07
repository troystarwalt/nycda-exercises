

to install postgres on a Mac with Homebrew:

----

In a terminal #1, run:

    $ brew install homebrew/versions/postgresql93
    $ initdb /usr/local/var/postgres -E utf8

----

In a separate terminal #2, run:

    $ postgres -D /usr/local/var/postgres
    $ # or instead...
    $ launchctl load /usr/local/opt/postgresql93/homebrew.mxcl.postgresql93.plist

----

Back in the original terminal #1:

    $ whoami
    nycdatwo
    $ ps -ef | grep postgres
    $ # should return some running processes
    $ createdb
    $ psql
    $ nycdatwo=# \list
    $ nycdatwo=# \conninfo
    $ nycdatwo=# \?
    $ nycdatwo=# ^C
    $ cd nycda-exercises/sql/
    $ ls
    INSTALL.md presidents-queries.sql presidents-queries-exercises.sql presidents.sql
    $ # this command runs the following SQL code on the 'postgres' database
    $ psql -d postgres -f presidents.sql
    $ psql
    $ nycdatwo=# \list
                                      List of databases
       Name    |  Owner   | Encoding |   Collate   |    Ctype    |   Access privileges
    -----------+----------+----------+-------------+-------------+-----------------------
     nycdatwo  | nycdatwo | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
     postgres  | nycdatwo | UTF8     | en_US.UTF-8 | en_US.UTF-8 |
     template0 | nycdatwo | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/nycdatwo          +
               |          |          |             |             | nycdatwo=CTc/nycdatwo
     template1 | nycdatwo | UTF8     | en_US.UTF-8 | en_US.UTF-8 | =c/nycdatwo          +
               |          |          |             |             | nycdatwo=CTc/nycdatwo
    (4 rows)
    $ nycdatwo=# \conninfo
    You are now connected to database "nycdatwo" as user "nycdatwo" via socket in "/tmp" at port "5432"
    $ nycdatwo=# \c postgres
    You are now connected to database "postgres" as user "nycdatwo"
    $ postgres=# \dt
                  List of relations
     Schema |      Name       | Type  |  Owner
    --------+-----------------+-------+----------
     public | presidents      | table | nycdatwo
     public | prime_ministers | table | nycdatwo
    (2 rows)

    $ postgres=# SELECT * FROM presidents;





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
    DROP TABLE
    psql:presidents.sql:19: NOTICE:  CREATE TABLE will create implicit sequence "presidents_id_seq" for serial column "presidents.id"
    psql:presidents.sql:19: NOTICE:  CREATE TABLE / PRIMARY KEY will create implicit index "presidents_pkey" for table "presidents"
    psql:presidents.sql:19: NOTICE:  CREATE TABLE / UNIQUE will create implicit index "presidents_president_number_key" for table "presidents"
    CREATE TABLE
    DROP TABLE
    psql:presidents.sql:33: NOTICE:  CREATE TABLE will create implicit sequence "prime_ministers_id_seq" for serial column "prime_ministers.id"
    psql:presidents.sql:33: NOTICE:  CREATE TABLE / PRIMARY KEY will create implicit index "prime_ministers_pkey" for table "prime_ministers"
    CREATE TABLE
    INSERT 0 1
    INSERT 0 1
    <snipped extraneous>
    INSERT 0 1
    SET
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

We can even run queries from the terminal

    $ psql -d postgres -c 'SELECT * FROM presidents LIMIT 10;'
     id | president_number |       name        | birth_year | death_year | took_office | left_office |   party    | home_state
    ----+------------------+-------------------+------------+------------+-------------+-------------+------------+------------
      1 |                1 | George Washington |       1732 |       1799 | 1789-04-30  | 1797-03-04  | No Party   | Virginia
      2 |               44 | Barack Obama      |       1961 |            | 2009-01-20  |             | Democratic | Illinois
      3 |               43 | George W. Bush    |       1946 |            | 2001-01-20  | 2009-01-20  | Republican | Texas
      4 |               42 | Bill Clinton      |       1946 |            | 1993-01-20  | 2001-01-20  | Democratic | Arkansas
      5 |               41 | George H. W. Bush |       1924 |            | 1989-01-20  | 1993-01-20  | Republican | Texas
      6 |               40 | Ronald Reagan     |       1911 |       2004 | 1981-01-20  | 1989-01-20  | Republican | California
      7 |               39 | Jimmy Carter      |       1924 |            | 1977-01-20  | 1981-01-20  | Democratic | Georgia
      8 |               38 | Gerald Ford       |       1913 |       2006 | 1974-08-09  | 1977-01-20  | Republican | Michigan
      9 |               37 | Richard Nixon     |       1913 |       1994 | 1969-01-20  | 1974-08-09  | Republican | California
     10 |               36 | Lyndon B. Johnson |       1908 |       1973 | 1963-11-22  | 1969-01-20  | Democratic | Texas
    (10 rows)


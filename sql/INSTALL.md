

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

    $ ps -ef | grep postgres
    $ # should return some running processes
    $ createdb
    $ psql
    $ psql>>> \list
    $ psql>>> \conninfo
    $ psql>>> \?
    $ psql>>> ^C
    $ cd nycda-exercises/sql/
    $ ls
    INSTALL.md presidents-queries.sql presidents-queries-exercises.sql presidents.sql
    $ # this command runs the following SQL code on the 'postgres' database
    $ psql -d postgres -f presidents.sql



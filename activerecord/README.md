#Run these commands:

    $ bundle install
    $ # bundle exec runs the shell command relative to bundle. This allows you
    $ # to run local gems as executables
    $ bundle exec rake db:drop
    $ bundle exec rake db:migrate
    $ bundle exec rake db:seed
    $ bundle exec irb
    $ irb(main)> require 'app.rb'
    true
    $ irb(main)> President.all
    ...results...
    $ irb(main)> President.all.first

#Exercises
1. Do the SQL exercises that we did last time, but now in Ruby.
    - [presidents-queries](../sql/presidents-queries.sql)
    - [presidents-queries-exercises](../sql/presidents-queries-exercises.sql)

2. Migrate the [presidentspets](../sql/presidentspets.sql) table into an ActiveRecord relation
3. Migrate the [sc_justices](../sql/sc_justices.sql) table into an ActiveRecord relation


#Other
Some other rake commands:
	rake db:reset
	rake db:drop db:create db:migrate


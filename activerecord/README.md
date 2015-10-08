Run these commands:

    $ bundle install
    $ rake db:drop
    $ rake db:migrate
    $ rake db:seed
    $ irb
    $ irb(main)> require 'app.rb'
    true
    $ irb(main)> President.all
    ...results...
    $ irb(main)> President.all.first

Some other rake commands:
	rake db:reset
	rake db:drop db:create db:migrate

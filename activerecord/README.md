#Run these commands:

    $ bundle install

If you're running Yosemite, El Capitan or later, you may need to run this command instead:

    $ ARCHFLAGS="-arch x86_64" bundle install

`bundle exec` runs the shell command relative to bundle. This allows you to run
local gems as executables. We're going to use it to run `rake`

    $ bundle exec rake db:drop
    $ bundle exec rake db:migrate
    $ bundle exec rake db:seed
    $ bundle exec irb
    $ irb(main)> load 'app.rb'
    true
    $ irb(main)> President.all
    ...results...
    $ irb(main)> President.all.first
    => #<President id: 1, president_number: 1, name: "George Washington", birth_year: 1732, death_year: 1799, took_office: "1789-04-30", left_office: "1797-03-04", party: "No Party", home_state: "Virginia">

For this exercise, I also added a set of nice gems, `pry` and `awesome_print`.

    $ bundle exec pry
    $ pry(main)> load 'app.rb'
    true
    $ pry(main)> President.all.limit(2)
    => [#<President:0x00000101f48808
      id: 1,
      president_number: 1,
      name: "George Washington",
      birth_year: 1732,
      death_year: 1799,
      took_office: Thu, 30 Apr 1789,
      left_office: Sat, 04 Mar 1797,
      party: "No Party",
      home_state: "Virginia">,
     #<President:0x00000101f485d8
      id: 2,
      president_number: 44,
      name: "Barack Obama",
      birth_year: 1961,
      death_year: nil,
      took_office: Tue, 20 Jan 2009,
      left_office: nil,
      party: "Democratic",
      home_state: "Illinois">]
    $ pry(main)> President.all.first
    => #<President:0x00000101da3e58
     id: 1,
     president_number: 1,
     name: "George Washington",
     birth_year: 1732,
     death_year: 1799,
     took_office: Thu, 30 Apr 1789,
     left_office: Sat, 04 Mar 1797,
     party: "No Party",
     home_state: "Virginia">
    $ pry(main)> President.all.first

    pry(main)> require 'awesome_print'
    => true
    [10] pry(main)> ap President.all.first
    #<President:0x000001011f5520> {
                      :id => 1,
        :president_number => 1,
                    :name => "George Washington",
              :birth_year => 1732,
              :death_year => 1799,
             :took_office => Thu, 30 Apr 1789,
             :left_office => Sat, 04 Mar 1797,
                   :party => "No Party",
              :home_state => "Virginia"
    }
    => nil
    $

#Exercises
1. Do the SQL exercises that we did last time, but now in Ruby.
    - [presidents-queries](../sql/presidents-queries.sql)
    - [presidents-queries-exercises](../sql/presidents-queries-exercises.sql)

2. add a way to import the tables into Postgres
    - edit [db/seeds.rb](db/seeds.rb) and then re run `bundle exec rake db:seed`
3. Add the [presidentspets](../sql/presidentspets.sql) table as ActiveRecord
    - add the relationship between a `pet` and ` president` using `belongs_to`
4. Add the [sc_justices](../sql/sc_justices.sql) table as ActiveRecord
    - add the relationship between a `justice` and ` president` using `belongs_to`

#Other
Some other rake commands:
	rake db:reset
	rake db:drop db:create db:migrate


require './demo.rb'

connection = ActiveRecord::Base.connection

presidents = File.read("db/presidents.sql")
pets = File.read("db/presidentspets.sql")
justices = File.read("db/sc_justices.sql")

puts connection.execute(presidents);
puts connection.execute(pets);
puts connection.execute(justices);

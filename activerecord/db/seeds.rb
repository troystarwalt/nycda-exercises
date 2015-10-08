require './app.rb'

connection = ActiveRecord::Base.connection

presidents = File.read("db/presidents.sql")

puts connection.execute(presidents);

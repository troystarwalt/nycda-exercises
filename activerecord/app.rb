require 'active_record'
require 'pg'
require './models'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :database => 'postgres',
  # :username => 'postgres',
  # :password => 'password',
  :host => 'localhost'
)

c = ActiveRecord::Base.connection

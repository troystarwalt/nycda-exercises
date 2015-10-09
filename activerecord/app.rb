require 'active_record'
require 'sinatra'
require 'sinatra/activerecord'
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

get "/" do
	params[:presidents] = President.all
	erb :index
end
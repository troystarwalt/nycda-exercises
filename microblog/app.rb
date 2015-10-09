require 'active_record'
require 'sinatra'
require 'sinatra/activerecord'

require './models.rb'

get "/" do
    params[:users] = User.all
    erb :index
end
require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require './environments'

ActiveRecord::Base.default_timezone = :local

class Todo < ActiveRecord::Base
end

get "/" do
  @title = "Todo!"
  @todo = Todo.where(:stage => 0)
  @doing = Todo.where(:stage => 1)
  @done = Todo.where(:stage => 2)
  erb :todo
end
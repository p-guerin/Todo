require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'
require './environments'

ActiveRecord::Base.default_timezone = :local

class Todo < ActiveRecord::Base
    validates :task, presence: true, length: { minimum: 1 }
end

get "/" do
  @title = "Todo!"
  @todo = Todo.where(:stage => 0)
  @doing = Todo.where(:stage => 1)
  @done = Todo.where(:stage => 2)
  erb :todo
end

post "/" do
  @todos = Todo.new(params[:todos])
  @todos.save
  redirect "/"
end

put "/:id" do
  @todos = Todo.find(params[:id])
  @todos.update_attributes(params[:todos])
  redirect "/"
end

delete "/:id" do
  @todos = Todo.find(params[:id])
  @todos.destroy
  redirect "/"
end
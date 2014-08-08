require 'sinatra'
require 'sinatra/base'
require './nebula-ets'
map '/' do
run YakApp
end

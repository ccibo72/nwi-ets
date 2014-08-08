require 'sinatra'
require 'sinatra/base'
require './nwi-ets'
map '/' do
run YakApp
end

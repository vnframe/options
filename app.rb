require "sinatra"
require_relative "pair_names.rb"
get "/" do
    erb :index
end
post "/pairing" do 
  name = params[:text]
  team = params[:team]
#team = pairs(name).to_s
puts "name is #{name}"
puts "team is #{team}"
erb :teamresults, :locals => {:team => team, :name => name}
end
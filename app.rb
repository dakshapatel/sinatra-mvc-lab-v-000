require_relative 'config/environment'
reuire'pry'
class App < Sinatra::Base

  get "/" do
  erb :user_input
  end

  post "/piglatinize" do
    binding.pry
    @text = params[:user_input]
    @piglatinizer = PigLatinizer.new
    @piglatinizer
    erb :piglatinize
  end




end

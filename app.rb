require_relative 'config/environment'
require'pry'
class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    @text = params[:user_input]
    @piglatinizer = PigLatinizer.new
    @piglatinizer.piglatinize(@text)

    erb :results
  end




end

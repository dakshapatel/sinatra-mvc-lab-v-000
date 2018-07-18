require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
  erb :user_input

  end

  post "/pigLatinizer" do
    @pigLatinizer = PigLatinizer.new(params[:user_text])
    erb :pigLatinizer
  end




end

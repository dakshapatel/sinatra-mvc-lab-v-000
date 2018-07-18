require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
  erb :user_input

  end

  post "/pigLatinizer" do
    @pigLatinizer = PigLatinizer.new(params[:user_text])
    erb :pig_latin_words
  end




end

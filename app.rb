require_relative 'config/environment'

class App < Sinatra::Base

  get "/user_input" do
  erb :user_input

  end

  post "/pig_latin_words" do
    @pigLatinizer = PigLatinizer.new(params[:user_text])
    erb :pig_latin_words
  end




end

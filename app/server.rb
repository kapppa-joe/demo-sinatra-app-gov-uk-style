require 'sinatra/base' 
require 'erb'

class App < Sinatra::Base
  configure do
    set :public_folder, 'public'
  end

  get '/' do
    erb :start
  end

  get '/main.css' do
    sass :main
  end
end

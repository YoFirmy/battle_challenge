require 'sinatra/base'
require 'sinatra/reloader'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  run! if app_file == $0
end
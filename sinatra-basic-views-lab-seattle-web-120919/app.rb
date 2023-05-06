require_relative 'config/environment'

class App < Sinatra::Base

    # index
  get '/' do
    erb :index
  end

  get "/info" do
    "Testing the info page"
  end

end
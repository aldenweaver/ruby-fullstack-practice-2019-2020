class ApplicationController < Sinatra::Base
  set :views, proc { File.join(root, '../views/') }
  register Sinatra::Twitter::Bootstrap::Assets

  get '/' do
    @figures = Figure.all
    @titles = Title.all
    @landmarks = Landmark.all
    erb :"application/index"
  end
end

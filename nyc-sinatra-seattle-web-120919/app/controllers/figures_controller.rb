class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
    @figures = Figure.all
    @figure = Figure.create(params['figure'])
    @figure.save
    erb :'figures/index'
  end

  get '/figures/new' do
    @figures = Figure.all
    @titles = Title.all
    @landmarks = Landmark.all
    erb :'figures/new'
  end

  get '/figures/:id' do
    @figure = Figure.find(params[:id])
    erb :'figures/show'
  end

  get '/figures/:id/edit' do
    @figure = Figure.find(params[:id])
    erb :'/figures/edit'
  end

  patch '/figures/:id' do
    figure = Figure.find(params[:id])
    figure.update(name: params[:name])
    redirect "/figures/#{figure.id}"
  end

  post '/figures' do
    @figure = Figure.create(params['figure'])
    @figure.save
    redirect "/figures/#{figure.id}"
  end

end

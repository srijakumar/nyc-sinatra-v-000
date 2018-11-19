class FiguresController < ApplicationController
  # add controller methods

  get '/figures/new' do
    erb :'figures/new'
  end

  get '/figures' do
   @figures = Figure.all
   erb :'figures/index'
  end

  get '/figures/:id' do
    @figure = Figure.find_by(params[:id])
    erb :'figures/show'
  end

  post '/figures' do

  end

  patch '/figures/:id' do

  end

end

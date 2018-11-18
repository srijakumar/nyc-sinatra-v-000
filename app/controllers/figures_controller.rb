class FiguresController < ApplicationController
  # add controller methods

  get '/figures/new' do
    erb :'figures/index'
  end

  get '/figures' do
   @figures = Figure.all
   erb :'figures/show'
  end

  get '/figures/:id' do
    @figure = Figure.find_by(params[:id])
    erb :'figures/show'
  end

end

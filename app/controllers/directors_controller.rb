class DirectorsController < ApplicationController
  def index
    directors = Director.all
    render json: directors, include: ['movies', 'movies.reviews']
  end

  def show
    director = Director.find(params[:id])
    render json: director, include: ['movies', 'movies.reviews']
  end
end

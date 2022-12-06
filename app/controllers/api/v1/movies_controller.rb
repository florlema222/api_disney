class Api::V1::MoviesController < ApplicationController
  before_action :set_movie, only: %i[show update destroy]
  # GET /movies
  def index
    @movies = Movie.all
    render json: @movies, only: [:title, :creation_date, :image_url]
  end

  # GET /movies/1
  def show
    render json: @movie, include: [:characters]
  end

  # POST /movies
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    render json: @movie.destroy
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movie_params
    params.require(:movie).permit(:title, :creation_date, :rate, :genre_id, :image_url)
  end
end

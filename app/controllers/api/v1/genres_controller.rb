class Api::V1::GenresController < ApplicationController
  def create
    @genre = Genre.new(genre_params)

    if @genre.save
      render json: @genre, status: :created, location: @genre
    else
      render json: @genre.errors, status: :unprocessable_entity
    end
  end

  def genre_params
    params.require(:genre).permit(:name, :image_url)
  end
end

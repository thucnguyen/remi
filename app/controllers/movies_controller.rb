class MoviesController < ApplicationController
  before_action :authenticate_user!

  def new
    # p 'dddddd'
    # p 'dddddd'
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user

    # respond_to do |format|
    #   if @movie.save
    #     # format.html { redirect_to movie_url(@movie), notice: "Movie was successfully created." }
    #     # format.json { render :show, status: :created, location: @movie }
    #     redirect_to root_url, notice: "Movie was successfully created."
    #   else
    #     # format.html { render :new, status: :unprocessable_entity }
    #     # format.json { render json: @movie.errors, status: :unprocessable_entity }
    #   end
    # end

    if @movie.save
      redirect_to root_url, notice: "Movie was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    def movie_params
      params.require(:movie).permit(:youtube_url)
    end
end

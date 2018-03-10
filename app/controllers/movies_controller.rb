class MoviesController < ApplicationController
	respond_to :html, :json, :js 
	before_action :set_movie, only: [:show]

	def index
	  @movies = Movie.friendly.all
	   .paginate(page: params[:page], per_page: 9)
	  respond_with(@movies)
	end

	def show
	  respond_with(@movie)
	end

	private

	def set_movie
	  @movie = Movie.friendly.find(params[:id])
	end
end
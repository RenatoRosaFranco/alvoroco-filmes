module Dashboard 
	class MoviesController < HomeController
		respond_to   :html, :json, :js
		before_action :set_movie, only: [:show, :edit, :update, :destroy]

		def index
		  @movies = Movies.all
		end

		def new
		  @movie = Movie.new
		end

		def show
		  respond_with(@movie)
		end

		def create
		  @movie = current_user.movies.build(movie_params)
		  @movie.save
		  respond_with(:dashboard, @movie)
		end

		def edit
		  respond_with(@movie)
		end

		def update
		  @movie.update(movie_params)
		  @movie.save
		  respond_with(:dashboard, @movie)
		end

		def destroy
		  @movie.destroy
		  respond_with(:dashboard, @movie)
		end

		private

		def set_movie
		  @movie = Movie.find(params[:id])
		end	

		def movie_params
		  params.require(:movie).permit(:name, :descripton, :link, :tags)
		end
	end
end
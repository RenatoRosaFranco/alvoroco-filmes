module Dashboard 
	class MoviesController < HomeController
		before_action :set_movie, only: [:show, :edit, :update, :destroy]

		def index
		  @movie = Movies.all
		end

		def new
		  @movie = Movie.new
		end

		def show
		end

		def create
		  @movie = current_user.movies.build(movie_params)
		  @movie.save
		  respond_with(:dashboard, @movie)
		end

		def edit

		end

		def update
		  @movie.update(movie_params)
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
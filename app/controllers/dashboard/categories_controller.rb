module Dashboard 
	class CategoriesController < HomeController
		respond_to    :html, :json, :js
		before_action :set_category, only: [:show, :edit, :update, :destroy]

		def index
		  @categories = Category.friendly.all
		end

		def new
		  @category = Category.new
		end

		def show
		  respond_with(@category)
		end

		def create
		  @category = current_user.categories.build(category_params)
		  @category.save
		  respond_with(:dashboard, @category)
		end

		def edit
		  respond_with(@category)
		end

		def update
		  @category.update(category_params)
		  @category.save
		  respond_with(:dashboard, @category)
		end

		def destroy
		  @category.destroy
		  respond_with(:dashboard, @category)
		end

		private

		def set_category
		  @category =  Category.friendly.find(params[:id])
		end	

		def category_params
		  params.require(:category).permit(:name, :description, :tags)
		end
	end
end
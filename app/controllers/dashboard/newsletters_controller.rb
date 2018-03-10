module Dashboard 
	class NewslettersController < HomeController
		respond_to    :html, :json, :js
		before_action :set_newsletter, only: [:show, :edit, :update, :destroy]

		def index
		  @newsletters = Newsletter.friendly.all
		end

		def new
		  @newsletter = Newsletter.new
		end

		def show
		  respond_with(@newsletter)
		end

		def create
		  @newsletter = Newsletter.create(newsletter_params)
		  @newsletter.save
		  respond_with(:dashboard, @newsletter)
		end

		def edit
		  respond_with(@newsletter)
		end

		def update
		  @newsletter.update(newsletter_params)
		  @newsletter.save
		  respond_with(:dashboard, @newsletter)
		end

		def destroy
		  @newsletter.destroy
		  respond_with(:dashboard, @newsletter)
		end

		private

		def set_newsletter
		  @newsletter = Newsletter.friendly.find(params[:id])
		end	

		def newsletter_params
		  params.require(:newsletter).permit(:name, :email)
		end
	end
end
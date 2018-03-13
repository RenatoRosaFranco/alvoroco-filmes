module Dashboard
	class UsersController < HomeController
		respond_to 	  :html, :js, :json
		before_action :set_user, only: [:show, :edit, :update, :destroy]
		
		def index
		   @users = User.friendly.all 
		end

		def new
		   @user = User.new
		end

		def show
		   respond_with(@user)
		end

		def create
		   @user = User.create(user_params)
		   @user.save 
		   respond_with(:dashboard, @user)
		end

		def edit
		   respond_with(@user)
		end

		def update
		   @user.update(user_params)
		   @user.save
		   respond_with(:dashboard, @user)
		end

		def destroy
		   @user.destroy 
		   respond_with(:dashboard, @user)
		end

		private

		def set_user
		   @user = User.friendly.find(params[:id])
		end

		def user_params
		   params.require(:user).permit(:avatar, :name, :email, :password, :password_confirmation)
		end
	end
end
module Dashboard 
	class PostsController < HomeController
		respond_to    :html, :json, :js
		before_action :set_post, only: [:show, :edit, :update, :destroy]

		def index
		  @posts = Post.all
		end

		def new
		  @post = Post.new
		end

		def show
		  respond_with(@post)
		end

		def create
		  @post = current_user.posts.build(post_params)
		  @post.save
		  respond_with(:dashboard, @post)
		end

		def edit
		  respond_with(@post)
		end

		def update
		  @post.update(post_params)
		  @post.save
		  respond_with(:dashboard, @post)
		end

		def destroy
		  @post.destroy
		  respond_with(:dashboard, @post)
		end

		private

		def set_post
		  @post = Post.find(params[:id])
		end	

		def post_params
		  params.require(:post).permit(:title, :description, :content, :published, :tags)
		end
	end
end
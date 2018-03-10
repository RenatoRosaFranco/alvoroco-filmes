module Blog
  class PostsController < ApplicationController
  	before_action :set_post, only: [:show]
  	
  	def index
  	  @posts = Post.friendly.all
  	   .paginate(page: params[:page], per_page: 9)
  	end

  	def show
  	end

  	private

  	def set_post
  	  @post = Post.friendly.find(params[:id])
  	end
  end	
end
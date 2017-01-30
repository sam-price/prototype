class PostsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_post, only: [:edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def create
		@post = current_user.posts.new(posts_params)
		if @post.save
			flash[:notice] = "Successfuly submitted"
			redirect_to posts_path
		else 
			render 'new'
		end	
	end


	def update
		if @post.update(posts_params)
			redirect_to posts_path
			flash[:notice] = "Successfuly updated"
		else
		render 'update'
		end
	end

	def show
		@posts = Post.find(params[:id])
	end

	def destroy
		@post.destroy
	end

	

	private
	def set_post
		@post = Post.find(params[:id])
	end

	def posts_params
		params.require(:post).permit(:content)
	end
end
class PostsController < ApplicationController
	before_action :set_post, only: [:edit, :update, :destroy]

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = current_user.posts.new(posts_params)
		if @post.save
			flash[:notice] = "Successfuly submitted"
			redirect_to post_path(@post)
		else 
			render 'new'
		end	
	end

	def edit
	end

	def update
		if @post.update(post_params)
			redirect_to posts_path

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
class PostsController < ApplicationController

	def new
		@post = Post.new
  end

	def create
		@post = Post.new(post_params)
    @post.save
    redirect_to  posts_path
  end

  def index
    @posts = Post.page(params[:page]).per(5)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to post_path
end


	private
    def post_params
          params.require(:post).permit(:town_name, :image, :comment)
    end

end


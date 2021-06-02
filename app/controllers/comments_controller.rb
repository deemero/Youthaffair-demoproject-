class CommentsController < ApplicationController
  def new
  @post = Post.find(params[:post_id])
  @comment = Comment.new
end

  def create
    @posts = Post.find(params[:post_id])
    @comment = @posts.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to posts_path(@post)
  end
end

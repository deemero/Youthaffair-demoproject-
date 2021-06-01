class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:comment][:id])
    @comments = @post.comments.create(params[:comment])
     redirect_to post_path(@post)
   end
 end

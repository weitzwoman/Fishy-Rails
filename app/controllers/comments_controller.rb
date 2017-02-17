class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @product = Product.find(params[:product_id])
    @comment = Comment.new
  end

  def create
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:notice] = "Comment Added"
      redirect_to product_path(@product)
    else
      flash[:alert] = "Please try again"
      redirect_to :back
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      flash[:notice] = "Update Successful"
      redirect_to product_path
    else
      flash[:alert] = "Update Failed"
      redirect_to :back
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

private
  def comment_params
    params.require(:comment).permit(:content, :product_id, :user_id)
  end
end

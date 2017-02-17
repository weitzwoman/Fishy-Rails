class ProductsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product Added"
      redirect_to products_path
    else
      flash[:alert] = "Please Try Again"
      redirect_to :back
    end
  end

  def show
    @product = Product.find(params[:id])
    @comments = @product.comments
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Update Successful"
      redirect_to products_path
    else
      flash[:alert] = "Update Failed"
      redirect_to :back
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.comments.each do |comment|
      comment.destroy
    end
    @product.destroy
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :price, :user_id)
  end
end

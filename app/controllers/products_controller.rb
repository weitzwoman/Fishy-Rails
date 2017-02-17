class ProductsController < ApplicationController
  before_filter :authenticate_user!

  def index
    # @product = Product.new
    @products = Product.all
    # @user = current_user.id
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to user_products_path
    else
      render :back
    end
  end

  def show
    @user = current_user.id
    @product = Product.find(params[:id])
  end

  def edit
    @user = current_user.id
    @product = Product.find(params[:id])
  end

  def update
    @user = current_user.id
    @product = Product.find(params[:id])
    if @product.update
      redirect_to :back
    else
      render :edit
    end
  end

  def destroy
    @user = current_user.id
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end

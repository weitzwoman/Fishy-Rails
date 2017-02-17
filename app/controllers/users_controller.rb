class UsersController < ApplicationController
  before_filter :authenticate_user!

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the site!"
      redirect_to "/"
    else
      flash[:alert] = "Problem creating your account!"
      redirect_to :back
    end
  end

private
  def user_params
    params.require(:user).permit(:email)
  end
end

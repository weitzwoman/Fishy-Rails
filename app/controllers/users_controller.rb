class UsersController < ApplicationController
  before_action :authenticate_user!

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
    params.require(:user).permit(:email, :password, :password_confirmation, :admin)
  end
end

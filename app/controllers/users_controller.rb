class UsersController < ApplicationController
  protect_from_forgery

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
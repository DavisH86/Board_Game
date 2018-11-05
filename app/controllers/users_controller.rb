class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user.id
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :user_name)
  end
end

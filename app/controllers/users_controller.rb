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
    params.require(:user).permit(:name, :email)
  end
end

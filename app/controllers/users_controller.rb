class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = current_user.id
    @user = User.find(params[:id])
  end
  def following
    @title = Following
    @user = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show'
  end
  def follower
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show'
  end
  private
  def user_params
    params.require(:user).permit(:name, :email, :followed_id, :follower_id)
  end
end

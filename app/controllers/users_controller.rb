class UsersController < ApplicationController
  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  # Returns a user's status feed.
  def feed
    followed_ids = "SELECT followed_id FROM relationships
                     WHERE  follower_id = :user_id"
    Micropost.where("user_id IN (#{following_ids})
                     OR user_id = :user_id", user_id: id)
  end

  def show
    @users = User.all
    @user = current_user.id
    @user = User.find(params[:id])
    @articles = @user.articles.order(:created_at).reverse
    @article = Article.new
  end

  def followeds
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followeds.paginate(page: params[:page], per_page: 5)
    render 'show_follow'
  end
  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page], per_page: 5)
    render 'show_follow'
  end
  private
  def user_params
    params.require(:user).permit(:name,:profile_photo, :email, :followed_id, :follower_id, :article)
  end
end

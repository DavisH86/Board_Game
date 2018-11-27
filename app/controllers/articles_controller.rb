class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.user = @user


    if @article.save
      redirect_to @user
    else
      render :new
    end
  end
  def article_params
    params.require(:article).permit(:title, :description, :user_id)
  end
end

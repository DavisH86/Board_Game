class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def show
    @group = Group.find(params[:id])
  end

  def create
    @group = Group.new(group_params)
    @group.users << current_user

    if @group.save
      flash[:notice] = "Group added successfully."
      render :show
    else
      flash[:error] = "Please try again."
      render :new
    end
  end

  def update

    @group = Group.find(params[:id])
    @group.users << current_user #user currently signed-in after click join

    if @group.save
      flash[:notice] = "You have join the group!"
      redirect_to :action => "show"
    else
      flash[:error] = "Sorry you have not joined an group."
    end
  end

  def edit
  end

  private
  def group_params
    params.require(:group).permit(:name, :description)
  end

end

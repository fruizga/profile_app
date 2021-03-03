class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def show
    
  end
  
  def index
    @users = User.all
  end

  # CREATE

  def new
    @user = User.new
    @user.socials.build

  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
      
    else
      render :new
    end
    
  end

  # EDIT & UPDATE

  def edit    
    @user.socials.build
  end

  def update    
    @user.update(user_params)

    redirect_to user_path(@user)
  end

  # DELETE / DESTROY

  def destroy
    @user.destroy
    redirect_to users_path
  end

# PRIVATE METHOD FOR USER_PARAMS
private

def set_user
  @user = User.find(params[:id])
end
  
  def user_params
    params.require(:user).permit(:email, :username, :firstname, :lastname, :bio, socials_attributes: [:id,:name, :link, :user_id, :_destroy])
  end
  
end
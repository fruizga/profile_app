class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
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
    @user = User.find(params[:id])
    @user.socials.build
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to user_path(@user)
  end

  # DELETE / DESTROY

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

# PRIVATE METHOD FOR USER_PARAMS
  
  
  def user_params
    #params.require(:user).permit(:email, :username, :firstname, :lastname, :bio, socials_attributes: [:id,:name, :link, :user_id, :_destroy])
    params.require(:user).permit(:email, :username, :firstname, :lastname, :bio, socials_attributes: Social.attribute_names.map(&:to_sym).push(:_destroy))

  end
  
end
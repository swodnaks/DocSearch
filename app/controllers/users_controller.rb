class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action do
  redirect_to root_path unless current_user && current_user.admin?
end
  def index
    authorize User
    @users = User.all
  end


  def edit
    authorize User
    @user = User.find(params[:id])
  end


  def update
    authorize User
    @user = User.find(params[:id])

    if @user.update(user_params)
    flash[:success] = 'User was updated'
     redirect_to users_path
    else
    render 'edit'
    end
  end


   private

  def user_params
    params.require(:user).permit(:last_name, :first_name, :email, :role)
  end
end

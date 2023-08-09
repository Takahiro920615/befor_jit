class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
      else
        render:new
      end
  end

  def updated
  end

  def destroy
  end

  private
   
   def user_params
    params.require(:user).permit(:name, :email, :password, :password_confiramation)
   end
end
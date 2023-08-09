class UsersController < ApplicationController

def new
  
end

def create
  @user = User.find(params[:id])
end

def show
  @user = User.find(params[:id])
end

def updated
end

def destroy
end
end
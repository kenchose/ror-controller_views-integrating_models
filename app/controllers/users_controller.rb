class UsersController < ApplicationController
  def users
    @users = User.all
    render json:@users
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name]) #we do not do create so we can do validations
    if @user.save
      redirect_to "/users"
    end
  end

  def student
    @user = User.first
    render json:@user
  end

  def edit
    @user = User.first
    render "edit"
  end

  def total
    @total = User.count
  end
end

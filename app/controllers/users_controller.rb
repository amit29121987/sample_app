class UsersController < ApplicationController
  def new
    @user= User.new
  end

  def show
      @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:Success] = "Welcome to Sample App"
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  def index

  end
end

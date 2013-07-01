class UsersController < ApplicationController

  skip_before_action :require_login, only: [:activate]

  load_and_authorize_resource

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      redirect_to @user, notice: "User was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to @user, notice: "User was successfully updated."
    else
      render action: 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url
  end
end
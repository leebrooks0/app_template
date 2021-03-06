class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  skip_after_action :verify_authorized, only: [:new, :create, :destroy]

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    if @user = login(@user_session.email, @user_session.password, @user_session.remember_me)
      redirect_back_or_to :users, notice: 'Successfully signed in.'
    else
      flash.now[:alert] = 'Sign in failed.'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to :sign_in, notice: 'Signed out!'
  end

end
class SessionsController < ApplicationController
  skip_before_action :authorize, only: [ :create, :new ]

  def new
  end

  def create
    user = User.find_by_name(params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path
    else
      flash.now[:error] = 'Invalid user/password combination'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end

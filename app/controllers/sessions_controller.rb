class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params["user"]["email"]).try(:authenticate, params["user"]["password"])
    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      # flash error message
      redirect_to '/signup'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end

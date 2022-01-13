class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			flash[:notice] = 'We need more info from you!'
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to @user
	else
			render 'edit'
	end
	end

	def show
		# redirect_to '/signup' unless logged_in?
	end

	private

	def set_user
		@user = User.find_by(id: params[:id])
	end

	def user_params
		params.require(:user).permit(:first_name, :last_name, :email, :password, :password_digest)
	end

end
class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show, :destroy]

def index
	@users = User.all
end

def new 
	@user = User.new
end

def edit
	
end

def create
	#render plain: params[:user].inspect
	@user = User.new(user_params)
	if @user.save
		flash[:success] = "User was successfully created"
		redirect_to user_path(@user)
	else
		render 'new'
	end	
end

def update
	if @user.update(user_params)
		flash[:success] = "User was successfully updated"
		redirect_to user_path(@user)
	else
		render 'edit'
	end	
end

def show
	
end

def destroy
	@user.destroy
	flash[:notice] = "User was successfully deleted"
	redirect_to users_path
end





private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :company)
	end


end 



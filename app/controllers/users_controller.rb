class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show, :destroy]
	before_action :require_user

def index
	#pagination needed
	@users = User.all
end

def new 
	@user = User.new
end

def edit
	
end


def create
	@user = User.new(user_params)
	if @user.save
		flash[:success] = "User was successfully created"
		redirect_to users_path
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
	@orders = Order.all
	@orderpreview = Order.limit(4).order("id desc")
	@locationpreview = Location.limit(3)
end

def destroy
	@user.destroy
	flash[:success] = "User was successfully deleted"
	redirect_to users_path
end





private

	def set_user
		@user = User.find(params[:id])
	end

	
	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :company, :password, :password_confirmation)
	end


end 



class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show, :destroy]
	#before_action :check_password, only: [:update, :create]

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
	#if :check_password == true
	@user = User.new(user_params)
		if @user.save
			flash[:success] = "User was successfully created"
			redirect_to users_path
		else
			render 'new'
		end	
	#else
		#render'new'
	#end
end


def update	
	if @user.update(user_params)
		flash[:success] = "User was successfully updated"
		redirect_to users_path
	else
		render 'edit'
	end		
end


def show
	
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

	# def check_password
	# 	if params[:password] === params[:password2]
	# 		return true
	# 	else
	# 		flash[:danger] = "passwords do not match"
	# 		return false
	# 	end
	# end

	def user_params
		params.require(:user).permit(:firstname, :lastname, :email, :company, :password, :password_confirmation)
	end


end 



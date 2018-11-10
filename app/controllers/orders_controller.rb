class OrdersController < ApplicationController
	before_action :require_user, only: [:index, :open, :closed, :edit, :update, :destroy]
	before_action :set_order, only: [:show, :edit, :update, :destroy]

def index
	@orders = Order.all.order("id desc")
end

def open
	@orders = Order.where(completed: false).order("id desc")
end

def closed
	@orders = Order.where(completed: true).order("id desc")
end

def show

end

def new #/maintenance
	@order = Order.new
	@locations = Location.all
end

def create
	@locations = Location.all
	@order = Order.new(order_params)
    if @order.save
      UserMailer.maintenance_confirmation(@order, @order.location).deliver_now
      flash[:success] = "Your maintenance request has been submitted.  Your Maintenance Order number is #{formatted_number(@order.id)}.  We will be in touch shortly, within 24 hours.  Your maintenace request details have been emailed to you."
      redirect_to maintenance_path
    else
      flash[:danger] = "There seems to have been a problem submitting your work order.  Please check the errors listed below and try again."
      render 'new'
    end 
end

def edit

end

def update
	if @order.update(order_params)
	  flash[:success] = "Order was successfully updated"
	  redirect_to orders_path
	else
	  render 'edit'
	end 
end

  
def destroy
	@order.destroy
	flash[:danger] = "Order was successfully deleted"
	redirect_to orders_path 
end

def choice
	@county = params[:county]

	if @county == 'HCPS'
		redirect_to new_order_path
	elsif 
		flash[:danger] = "Please select a County"
		redirect_to maintenance_path
	else
		redirect_to maintenance_path
	end
end



private

	def order_params
		params.require(:order).permit(:facility_info, :location_id, :order_type, :emergency_lights, :requestor_name, :requestor_phone, :email, :comments, :completed)
	end

	def set_order
		@order = Order.find(params[:id])
	end



end
class OrdersController < ApplicationController

def index
	@orders = Order.all
end

def new
	@order = Order.new
	@locations = Location.all
end

def create
	@locations = Location.all
	@order = Order.new(order_params)
    if @order.save
      flash[:success] = "Your work has been submitted. We will be in touch shortly, within 24 hours. Your work order number and details have been emailed to you."
      redirect_to maintenance_path
    else
      flash[:danger] = "There seems to have been a problem submitting your work order.  Please call us at 888-841-1840."
      render 'new'
    end 
end





private

	def order_params
		params.require(:order).permit(:facility_info, :location_id, :order_type, :emergency_lights, :requestor_name, :requestor_phone, :email, :comments, :completed)
	end



end
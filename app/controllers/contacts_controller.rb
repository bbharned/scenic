class ContactsController < ApplicationController


def new
	@contact = Contact.new
end

def create
	@contact = Contact.new(contact_params)
	if @contact.save
      UserMailer.contact_message(@contact).deliver_now
      flash[:success] = "Your Email has been sent.  We will be in touch shortly"
      redirect_to contact_path
    else
      flash[:danger] = "There was a problem sending your email"
      render 'new'
    end 
end



private

	def contact_params
		params.require(:contact).permit(:name, :email, :phone, :organization, :message)
	end


end
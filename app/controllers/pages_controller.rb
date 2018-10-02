class PagesController < ApplicationController

	def index
		#redirect_to users_path if logged_in?
	end



	def about

	end



	def contact
		@email = Email.new(set_contact)
	end



	def what

	end



	def how

	end


	def who

	end


	def memdexcell

	end


	def more

	end



	private

		def set_contact
			params.require(:email).permit(:name, :email, :phone, :organization, :message)
		end



end
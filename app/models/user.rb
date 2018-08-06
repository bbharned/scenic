class User < ActiveRecord::Base
	validates :firstname, presence: true, length: { minimum: 2, maximum: 20 }
	validates :lastname, presence: true, length: { minimum: 2, maximum: 25 }
	validates :email, presence: true, length: { minimum: 2, maximum: 40 }
	validates :company, presence: true, length: { minimum: 3, maximum: 50 }



end
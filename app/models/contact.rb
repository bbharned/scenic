class Contact < ApplicationRecord #ActiveRecord::Base
	#validates :firstname, presence: true, length: { minimum: 2, maximum: 20 }
	#validates :lastname, presence: true, length: { minimum: 2, maximum: 25 }
	#validates :email, presence: true, length: { minimum: 2, maximum: 40 }
	#validates :company, presence: true, length: { minimum: 3, maximum: 50 }

	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    #validates :email,  presence: true,  length: { maximum: 105 },
     #           uniqueness: { case_sensitive: false },
    #            format: { with: VALID_EMAIL_REGEX }
    #before_save { self.email = email.downcase }

    #has_secure_password

end
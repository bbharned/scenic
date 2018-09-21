class Order < ApplicationRecord
	belongs_to :location
	validates :requestor_name, presence: true, length: { minimum: 2, maximum: 50 }
	validates :requestor_phone, presence: true, length: { minimum: 10, maximum: 25}
	validates :order_type, presence: true
	validates :location_id, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
    validates :email,  presence: true,  length: { maximum: 105 },
                case_sensitive: false,
                format: { with: VALID_EMAIL_REGEX }
    before_save { self.email = email.downcase }

    



end
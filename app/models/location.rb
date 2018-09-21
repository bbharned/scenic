class Location < ApplicationRecord
	has_many :orders

	validates :scl_ref, presence: true
	validates :name, presence: true, length: { minimum: 2, maximum: 50}
	validates :sc_type, presence: true
	validates :address, presence: true


	
end

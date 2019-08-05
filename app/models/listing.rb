class Listing < ApplicationRecord
	validates :available_beds,
	presence: true,
	length: { minimum : 0 }

	validates :price,
	presence: true,
	length: { minimum : 0 }

	validates :description,
	presence: true,
	length: { minimum : 140 }

	validates :welcome_message,
	presence: true

	belongs_to :users
	belongs_to :city
	has_many :reservations
end

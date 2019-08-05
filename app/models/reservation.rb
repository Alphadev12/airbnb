class Reservation < ApplicationRecord
	validates :start_date, :end_date,
	presence: true

	validate :end_date_is_after_start_date
	
	private

	def end_date_is_after_start_date
	  return if end_date.blank? || start_date.blank?

	  if end_date < start_date
	    errors.add(:end_date, "cannot be before the start time") 
		end 
	end

	def duration
		duration = end_date.to_f - start_date.to_f
		return duration
	end

	belongs_to :users
	belongs_to :listings

end

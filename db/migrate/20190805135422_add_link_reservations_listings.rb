class AddLinkReservationsListings < ActiveRecord::Migration[5.2]
  def change
  	  add_reference :reservations, :listings, foreign: true
  end
end

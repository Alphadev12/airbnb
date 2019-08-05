class AddLinkUserReservation < ActiveRecord::Migration[5.2]
  def change
  	add_reference :reservations, :users, foreign: true
  end
end

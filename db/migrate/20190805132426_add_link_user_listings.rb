class AddLinkUserListings < ActiveRecord::Migration[5.2]
  def change
  	add_reference :listings, :users, foreign: true
  end
end

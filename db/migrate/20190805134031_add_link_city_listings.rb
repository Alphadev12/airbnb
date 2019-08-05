class AddLinkCityListings < ActiveRecord::Migration[5.2]
  def change
  	  add_reference :listings, :cities, foreign: true
  end
end

class UserGuest < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :guest, :boolean
  end
end

class DeleteRoomsUserTable < ActiveRecord::Migration
  def change
  	drop_table :rooms_users
  end
end

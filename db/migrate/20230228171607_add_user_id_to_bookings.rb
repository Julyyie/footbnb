class AddUserIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :user_id, :bigint, null: false
    add_column :bookings, :player_id, :bigint, null: false
  end
end

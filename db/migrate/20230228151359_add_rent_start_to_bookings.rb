class AddRentStartToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :rent_start, :date
    add_column :bookings, :rent_ending, :date
  end
end

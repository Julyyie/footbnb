class AddRatingToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :rating, :integer
    add_column :players, :strong_foot, :string
  end
end

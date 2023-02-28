class AddAgeToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :age, :integer
  end
end

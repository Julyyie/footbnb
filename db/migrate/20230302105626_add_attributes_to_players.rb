class AddAttributesToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :price, :integer
    add_column :players, :description, :string
  end
end

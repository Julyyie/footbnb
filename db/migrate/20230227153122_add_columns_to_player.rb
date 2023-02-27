class AddColumnsToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :first_name, :string
    add_column :players, :last_name, :string
    add_column :players, :club, :string
    add_column :players, :position, :string
    add_column :players, :player_photo, :string
    add_reference :players, :user, null: false, foreign_key: true
  end
end

class Player < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :club, presence: true

  # validates :user_id, presence: true, through: :user

  def display_position
    {
      "Left Back" => "Arrière gauche",
      "Defensive Midfielder" => "Milieu défensif",
      "Full Back" => "Défenseur central",
      "Centre Forward" => "Attaquant de pointe",
      "Midfielder" => "Milieu de terrain",
      "Second Striker" => "Attaquant",
      "Goalkeeper" => "Gardien de but"
    }[position]
  end
end

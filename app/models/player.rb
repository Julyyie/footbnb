class Player < ApplicationRecord
# belongs_to: user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :club, inclusion: { in: ["PSG", "Real Madrid", "Manchester United", "Arsenal", "New Castle"] }
  validates :position, inclusion: { in: ["Attaquant", "Défenseur", "Goal", "Milieu de terrain"] }
  validates :player_photo, presence: true
  validates :user_id, presence: true, through: :user
end

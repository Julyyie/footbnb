class Player < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :player_photo

  validates :name, presence: true
  validates :club, presence: true

  # validates :user_id, presence: true, through: :user
end

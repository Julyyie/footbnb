class Player < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :club, presence: true

  # validates :user_id, presence: true, through: :user
end

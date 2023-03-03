class Player < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo


  validates :name, presence: true
  validates :club, presence: true

  scope :filter_by_status, -> (status) { where status: status }
  scope :filter_by_location, -> (location_id) { where location_id: location_id }
  scope :filter_by_starts_with, -> (name) { where("name like ?", "#{name}%")}
  # validates :user_id, presence: true, through: :user
end

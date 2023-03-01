class Booking < ApplicationRecord
  belongs_to :player
  belongs_to :user

  # validates_date :rent_start, on_or_before: lambda { Date.current }
  # validates_date :rent_end, on_or_before: lambda { Date.current }
  # validates :rent_status, presence: true, inclusion: { in: ["Accept", "Decline"] }
  validates :user_id, :player_id, presence: true
end

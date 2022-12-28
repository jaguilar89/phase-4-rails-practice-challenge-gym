class Membership < ApplicationRecord
  validates :client_id, uniqueness: { scope: :gym_id }
  validates :client_id, :gym_id, :charge, presence: true

  belongs_to :client
  belongs_to :gym
end

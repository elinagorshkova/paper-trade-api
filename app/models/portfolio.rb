class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :positions
  validates :user_id, presence: true, uniqueness: true
end

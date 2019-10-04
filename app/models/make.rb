class Make < ApplicationRecord
  has_many :cars
  validates :name, :country, presence: true
  validates :name, uniqueness: true
  validates :name, :country, length: { in: 2..24 }
end

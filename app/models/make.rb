class Make < ApplicationRecord
  has_many :cars
  validates :name, :country, presence: true
  validates :name, uniqueness: true
end

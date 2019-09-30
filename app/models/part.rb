class Part < ApplicationRecord
  has_and_belongs_to_many :cars
  validates :name, :description, presence: true
  validates :name, uniqueness: true
end

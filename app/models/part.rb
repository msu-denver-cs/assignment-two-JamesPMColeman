class Part < ApplicationRecord
  has_and_belongs_to_many :cars
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  validates :name, :description, length: { minimum: 2 }
  validates :name, length: { maximum: 24 }
  validates :description, length: { maximum: 350 }
end

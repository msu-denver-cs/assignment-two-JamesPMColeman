class Car < ApplicationRecord
  belongs_to :make
  has_and_belongs_to_many :parts
  validates :model, :VIN, :year, presence: true
  validates :year, numericality: {
      greater_than_or_equal_to: 1885, less_than_or_equal_to: Date.today.year }
  validates :model, :VIN, uniqueness: true
end

class Car < ApplicationRecord
  belongs_to :make
  has_and_belongs_to_many :parts
  validates :make, :model, :VIN, :year, presence: true
  validates :year, numericality: {
      greater_than_or_equal_to: 1885, less_than_or_equal_to: Date.today.year }
  validates :VIN, numericality: { only_integer: true }
  validates :VIN, uniqueness: true
  validates :VIN, length: { is: 17 }
  validates :model, length: { in: 2..24 }
end
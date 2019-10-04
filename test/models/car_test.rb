require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "car attributes must not be empty" do
    car = Car.new
    assert car.invalid?
    assert car.errors[:model].any?
    assert car.errors[:year].any?
    assert car.errors[:VIN].any?
  end

  #test "year must be 1885 or later" do
  #  car = Car.new(model:    "Some car",
  #                VIN:      123874)
  #  car.year = -1
  #  assert car.invalid?
  #  assert_equal ["must be greater than or equal to 1885"],
  #               car.errors[:year]

  #  car.year = 1800
  #  assert car.invalid?
  #  assert_equal ["must be greater than or equal to 1885"],
  #               car.errors[:year]

  #  car.year = 1885
  #  assert car.valid?
  #end
  #test "year must be the current year or earlier" do
  #  car = Car.new(make:     Make.first,
  #                model:    "Some car",
  #                VIN:      123874)
  #  car.year = 10100
  #  assert car.invalid?
  #  assert_equal ["must be less than or equal to the current year"],
  #               car.errors[:year]

  #  car.year = Date.today.year + 1
  #  assert car.invalid?
  #  assert_equal ["must be less than or equal to the current year"],
  #               car.errors[:year]

  #  car.year = 2000
  #  assert car.valid?
  #end
end

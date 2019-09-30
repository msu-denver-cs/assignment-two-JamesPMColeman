require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "car attributes must not be empty" do
    car = Car.new
    assert car.invalid?
    assert car.errors[:model].any?
    assert car.errors[:year].any?
    assert car.errors[:VIN].any?
  end
end

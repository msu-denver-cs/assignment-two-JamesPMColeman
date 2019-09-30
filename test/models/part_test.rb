require 'test_helper'

class PartTest < ActiveSupport::TestCase
  test "part attributes must not be empty" do
    part = Part.new
    assert part.invalid?
    assert part.errors[:name].any?
    assert part.errors[:description].any?
  end
end

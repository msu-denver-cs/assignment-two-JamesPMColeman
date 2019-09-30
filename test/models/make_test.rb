require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  test "make attributes must not be empty" do
    make = Make.new
    assert make.invalid?
    assert make.errors[:name].any?
    assert make.errors[:country].any?
  end

end

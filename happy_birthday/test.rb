require 'minitest/autorun'
require 'minitest/spec'
require './happy_birthday'

describe "HappyBirthday" do
  # it "should ask what year a person was born" do
  #   hb = HappyBirthday.new
  #   hb.
  # end

  it "should find the age of the person" do
    hb = HappyBirthday.new
    hb.year = 1979
    hb.month = 4
    hb.day = 2
    hb.spank_count.must_equal 33
  end

  # it "should ask what month a person was born" do
  # end

  # it "should ask what day a perons was born" do
  # end

  # it "should return SPANK! a person for each birthday" do
  # end
end
require 'minitest/autorun'

class Year
    def initialize(year)
        @year = year
    end

    def leap?
        if @year % 4 == 0
            unless @year % 100 == 0 && @year % 400 == 0
                return true
            end
        end
        return false
    end
end

class Test < MiniTest::Unit::TestCase
    # test 'do' do
    # def setup
    #     years = (1900..2000).to_a
    #     years.each |year| do

    #     end
    #     puts years
    # end

    describe "Year" do
        it "test_should_be_a_leap_year" do
            assert_equal true, Year.new(1996).leap?
        end

        it "test_should_not_be_a_leap_year" do
            assert_equal false, Year.new(1997).leap?
        end
    end
end

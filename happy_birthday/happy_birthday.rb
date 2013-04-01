require 'highline/import'

class HappyBirthday
  attr_accessor(:year, :month, :day)

  def initialize
    @current_date = Time.now.to_i
    @birth_date = nil
  end

  def spank_count
    @birth_date = Time.new(@year, @month, @day).to_i
    time_since_birth = @current_date - @birth_date
  end

  def run
  end
end
class Robot
  def initialize
    @count = 0;
    @name = generate_name
    @mac = generate_name + ":" +  generate_name
    @created_at = Time.now
    @reset_at = 0
  end

  def generate_name
    prefix = ("A".."Z").to_a.sample(2).join
    suffix = (100..999).to_a.sample(1).join
    prefix + suffix
  end

  def mac
    @count += 1
    @mac
  end

  def name
    @count += 1
    @name
  end

  def instruction_count
    @count
  end

  def reset
    @count += 1
    @name = generate_name
  end

  def timers
    "#{@reset_at.to_s} seconds since reset, #{@created_at.to_s} seconds since creation"
  end
end

robot = Robot.new
robot.timers

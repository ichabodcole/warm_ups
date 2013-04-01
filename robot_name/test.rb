require 'minitest/spec'
require 'minitest/autorun'
require './robot_name'

describe 'Robot' do

  it "should return the same value for every name call" do
    robo = Robot.new
    robo.name.must_equal robo.name
  end

  it "should have a unique mac address that does not reset" do
    robot = Robot.new
    original_mac = robot.mac
    robot.reset
    new_mac = robot.mac
    original_mac.must_equal new_mac
  end

  it "should return a unique Robot name" do
    robot1 = Robot.new
    robot2 = Robot.new
    robot1.name.wont_equal robot2.name
  end

  it "should return a new name after reset" do
    robot = Robot.new
    original_name = robot.name
    robot.reset
    new_name = robot.name
    original_name.wont_equal new_name
  end

  it "should count the number of operations" do
    robot = Robot.new
    robot.name
    robot.name
    robot.reset
    robot.mac
    robot.name
    robot.instruction_count.must_equal 5
  end

  it "should return a timestamp" do
    cur_time = "0 seconds since reset, #{Time.now.to_s} seconds since creation"
    robot = Robot.new
    robot.timers.must_equal cur_time
  end
end

require './lib/bike'

class DockingStation
  attr_reader :bike_count

  DEFAULT_CAPACITY = 20

  def initialize
    @bike_count = []
  end

  def release_bike
    if empty?
      raise "No bikes available"
    else
      @bike_count.pop
    end
  end

  def dock_bike(bike)
    if full?
      raise "Station is full"
    else
      @bike_count << bike
    end
  end

private
  def full?
    @bike_count.length >= DEFAULT_CAPACITY ? true : false
  end

  def empty?
    @bike_count.length < 1 ? true : false
  end
end

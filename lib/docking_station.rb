require_relative 'bike'

class DockingStation

  attr_reader :docked_bike
  def initialize
    @docked_bike
  end
  def release_bike
    raise "No bikes available" if @docked_bike == nil
    @docked_bike
  end

  def dock(bike)
    @docked_bike = bike
  end

end

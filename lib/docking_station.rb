class DockingStation

  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def dock(bmx)
    fail 'Docking station full' if full?
    @bikes << bmx ##gives value bike when dock is called on argument bike
### THIS DEFINITION IS ASSIGNING THE ARGUMENT TO THE INSTANCE VARIABLE
  end

  def release_bike
    fail 'No bikes available' if empty? #IE WHEN THE INSTANCE VARIABLE @BIKE IS NOT NIL
    @bikes.pop ##ALTERNATE - Bike.new also works here
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end

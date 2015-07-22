class DockingStation
  def initialize
    @bikes = []
  end

  def dock(bmx)
    fail 'Docking station full' if @bikes.count >=20
    @bikes << bmx ##gives value bike when dock is called on argument bike
### THIS DEFINITION IS ASSIGNING THE ARGUMENT TO THE INSTANCE VARIABLE
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty? #IE WHEN THE INSTANCE VARIABLE @BIKE IS NOT NIL
    @bikes.pop ##ALTERNATE - Bike.new also works here
  end

end

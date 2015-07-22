class DockingStation

  def dock(bmx)
  bmx = Bike.new ##Until we added this line (LAST) out feature test failed but the unit test passed
  @bike = bmx ##gives value bike when dock is called on argument bike
### THIS DEFINITION IS ASSIGNING THE ARGUMENT TO THE INSTANCE VARIABLE
  end

  def release_bike
  fail 'No bikes available' unless @bike #IE WHEN THE INSTANCE VARIABLE @BIKE IS NOT NIL
  @bike ##ALTERNATE - Bike.new also works here
  end

end
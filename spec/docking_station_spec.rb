require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

 it "releases a working bike" do
 	instance = Bike.new
  expect(instance).to be_working
 end
end


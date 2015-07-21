require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

 it "produces a bike and the bike works" do
 	instance = Bike.new
  expect(Bike.new).to be_working ##can use instance or Bike.new in brackets here
 end
end


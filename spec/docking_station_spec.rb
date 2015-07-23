require "docking_station"

describe DockingStation do
  it {is_expected.to respond_to :release_bike}
  it "can be docked" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

 it 'releases working bikes' do
    subject.dock Bike.new ##WARNING - this allows the unit test to pass because it assumes that the argument that dock takes when called is a member of that class - this is not defined in the code. Until defined, the feature test fails!
    bike = subject.release_bike
    expect(bike).to be_working
  end


  describe '#dock' do
    it 'raises an error when full (capacity 20)' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new } ##Class constant used correctly!
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY ####when we get this to work can we try subbing ".to eq" with "to be", "=", "==" & "==="
  end
end

##expect(actual).to eq(expected)

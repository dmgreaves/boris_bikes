require "docking_station"

describe DockingStation do
    it { is_expected.to respond_to :release_bike }

    it 'releases working bikes' do
      subject.dock(Bike.new)
      bike = subject.release_bike
      expect(bike).to be_working
    end

    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'station shows docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.docked_bike).to be_an_instance_of(Bike)
    end

    it "raises an error" do
      expect {subject.release_bike}.to raise_error("No bikes available")
    end

end

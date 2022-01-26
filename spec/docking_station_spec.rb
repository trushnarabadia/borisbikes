require './lib/docking_station'
describe "DockingStation" do 
  describe "#release_bike" do
    it "should release the bike from the docking station" do 
      docking_station = DockingStation.new  
      expect(docking_station).to respond_to(:release_bike)
    end
  end
  describe "#working?" do
    it "should check if the bike is working" do
      docking_station = DockingStation.new
      bike = docking_station.release_bike 
      expect(bike).to be_a Bike
      expect(bike.working?).to eq true 
    end
  end
  describe "should dock a bike at the docking station" do
    it "dock the bike" do
      docking_station = DockingStation.new
      expect(docking_station).to respond_to(:dock).with(1).argument
      expect(docking_station).to respond_to(:dock)
      bike = Bike.new
      expect(docking_station.dock(bike)).to eq bike
    end
  end

  describe "returns a docked bike" do
    it "returns a docked bike" do
      docking_station = DockingStation.new
      bike = Bike.new
      docking_station.dock(bike)
      expect(docking_station.bike).to eq bike
    end
  end
end
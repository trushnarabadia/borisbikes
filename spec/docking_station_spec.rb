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
      expect(bike).to respond_to(:working?)
    end
  end
end
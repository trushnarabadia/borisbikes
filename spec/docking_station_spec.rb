require './lib/docking_station'
describe "DockingStation" do 
  describe "#release_bike" do
    it "should release the bike from the docking station" do 
      docking_station = DockingStation.new  
      expect(docking_station).to respond_to(:release_bike)
    end
  end
end
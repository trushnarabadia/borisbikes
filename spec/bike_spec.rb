require './lib/docking_station'

describe Bike do 
  describe "#working?" do
    bike = Bike.new
      it "should respond to the method 'working?' " do
        expect(bike).to respond_to(:working?) 
      end
    end
end

require './lib/bike'

describe Bike do 
  describe "#working?" do
    it "should check if the bike is working" do 
      bike = Bike.new  
      expect(bike).to respond_to(:working?)
    end
  end
end

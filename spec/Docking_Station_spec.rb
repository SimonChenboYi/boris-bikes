require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  describe '#release_bike' do

    it "should release bike" do
      expect(subject.release_bike).to be_a(Bike)
    end

    it "should check if the bike is working" do
      expect(subject.release_bike.working?).to be_truthy
    end


  end
end

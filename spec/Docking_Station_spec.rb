require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  RSpec.configure do |c|
    c.example_status_persistence_file_path = "examples.txt"
  end

  #describe '#release_bike' do
  #  it "should release bike" do

  #  end
  #end

 #describe '#working?' do
    #it "should check if the bike is working" do
    #  expect(subject.release_bike.working?).to be_working
    #end
  #end

  describe '#dock' do
    bike = Bike.new
    it "should receive and dock bike" do
      expect(subject.dock(bike)).to eq bike
    end
  end

  describe '#bike' do
    it "should tell user if there's a docked bike" do
      expect(subject).to respond_to(:bike)
    end
  end

  describe '#error' do
    it "raises error when there's no bike" do
      expect { DockingStation.new.release_bike }.to raise_error
    end
  end

end

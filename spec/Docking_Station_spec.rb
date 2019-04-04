require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  RSpec.configure do |c|
    c.example_status_persistence_file_path = "examples.txt"
  end

  #describe '#release_bike' do
  #  it "should release bike" do
  #    bike = Bike.new
  #    subject.dock(bike)
  #    expect(subject.release_bike).to eq bike
  #  end
  #end

 #describe '#working?' do
    #it "should check if the bike is working" do
    #  expect(subject.release_bike.working?).to be_working
    #end
  #end



  describe '#dock_full' do
    bike = Bike.new
    it "should not return bike if dock is full" do
      20.times {subject.dock(bike)}
    expect { subject.dock(bike) }.to raise_error(RuntimeError)
    end
  end

  describe '#bike' do
    it "should tell user if there's a docked bike" do
      expect(subject).to respond_to(:bike)
    end
  end

  describe '#release_bike error' do
    it "raises error when docking station is full" do
      expect { subject.release_bike }.to raise_error(RuntimeError)
    end
  end

end

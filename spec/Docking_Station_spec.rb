require 'docking_station'
require 'bike'

RSpec.describe DockingStation do
  #describe '#release_bike' do
  #  it "should release bike" do
  #    bike = Bike.new
  #    subject.dock(bike)
  #    expect(subject.release_bike).to eq bike
  #  end
  #end

  it 'releases working bikes' do
    subject.dock double(:bycycle)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  describe '#dock' do
    it "raises error when dock is full" do
      subject.capacity.times {subject.dock double :bycycle}
    expect { subject.dock(double :bycycle) }.to raise_error "Docking station full"
    end
  end

  describe '#bikes' do
    it "should tell user if there's a docked bike" do
      expect(subject).to respond_to(:bikes)
    end
  end

  describe 'initialization' do
    subject { DockingStation.new }
    let(:bike) { double :bycycle }
    it 'defaults capacity' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
      expect{ subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end

  describe '#release_bike error' do
    it "raises error when no bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

    it "raises error if bike is broken" do
      bike = double :bycycle
      station = DockingStation.new
      bike.report_broken
      station.dock(bike)
      expect {station.release_bike}.to raise_error "Bike is broken"
    end
  end

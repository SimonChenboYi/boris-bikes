require 'docking_station'

RSpec.describe DockingStation do
  describe '#relese_bike' do
    it { is_expected.to respond_to(:relese_bike) }
  end
end

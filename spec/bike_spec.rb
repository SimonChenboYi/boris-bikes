require 'bike'

RSpec.describe Bike do

  describe "#working?" do
  it { is_expected.to respond_to :working? }
  end

  describe "#broken" do
    it "reports a bike as broken" do
      subject.report_broken
      expect(subject.broken).to eq true
    end
  end
end

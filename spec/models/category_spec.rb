require "rails_helper"

RSpec.describe Category, type: :model do
  describe "Database table" do
    # Add specs IF model grows ;-)
  end

  describe "Translation methods" do
    it { is_expected.to respond_to :name }
    it { is_expected.to respond_to :translations }
  end

  describe "Association" do
    it { is_expected.to have_many :articles }
  end

  describe "Validation" do
    it { is_expected.to validate_presence_of :name }
  end

  describe "Factory" do
    it "can create a valid instance" do
      expect(create(:category)).to be_valid
    end
  end
end

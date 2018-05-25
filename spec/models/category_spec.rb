require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { create(:category) }

  describe 'Database table' do
    it { is_expected.to have_db_column :name }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to have_many :articles }
  end

  describe 'Factory' do
    it 'can create a valid instance' do
      expect(category).to be_valid
    end
  end
end

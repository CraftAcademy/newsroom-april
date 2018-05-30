require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :published }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article }
    it { is_expected.to belong_to :user }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :content }
  end

  describe 'Factory' do
    it 'can create a valid instance' do
      expect(create(:comment)).to be_valid
    end
  end
end

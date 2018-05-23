require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:article) { create(:article) }

  describe 'Database table' do
    it { is_expected.to have_db_column :headline }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validation' do
    it { is_expected.to validate_presence_of :headline }
    it { is_expected.to validate_presence_of :content }

  end

  describe 'Factory' do
    it 'can create a valid instance' do
      expect(article).to be_valid
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do

 describe 'Database table' do
   it { is_expected.to have_db_column :email }
   it { is_expected.to have_db_column :encrypted_password }
   it { is_expected.to have_db_column :role }
 end

 describe 'Validation' do
   it { is_expected.to validate_presence_of :role }
 end

 describe 'Factory' do
   it 'can create a valid instance' do
     expect(create(:user)).to be_valid
   end
 end
end

require 'rails_helper'

RSpec.describe User, type: :model do

 describe 'Database table' do
   it { is_expected.to have_db_column :email }
   it { is_expected.to have_db_column :encrypted_password }
 end

 describe 'Factory' do
 it 'has valid user credentials ' do
   expect(create(:user)).to be_valid
   end
 end
end

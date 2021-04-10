require 'rails_helper'

describe User, type: :model do
  context 'Associations' do
    it { should have_one_attached(:profile_photo) }
    it { should have_one_attached(:cover_photo) }
    it { should have_many(:followers), foreign_key: :follower_id, class_name: :Following }
    it { should have_many(:followed), foreign_key: :followed_id, class_name: :Following }
    it { should have_many(:opinions), foreign_key: :user_id, class_name: :Opinion }
  end

  context 'Validations' do

    it { should validate_content_type_of(:profile_photo).allowing('image/png', 'image/jpg', 'image/jpeg') }

    it { should validate_size_of(:profile_photo).less_than(1.megabytes) }

    it { should validate_content_type_of(:cover_photo).allowing('image/png', 'image/jpg', 'image/jpeg') }

    it { should validate_size_of(:cover_photo).less_than(2.megabytes) }
  end
end

# describe User, type: :model do
#   fixtures :users

#   it 'returns true for a valid user' do
#     user1 = users(:user1)
#     expect(user1.valid?).to be true
#   end

#   it 'returns false for an name is more than 20 characters' do
#     user3 = users(:user3)
#     expect(user3.valid?).to be false
#   end

#   it 'invalid if email already exit' do
#     user = User.new(name: 'wand', email: 'wandji@email.com')
#     expect(user.valid?).to be false
#   end

#   describe 'columns for user' do
#     it { should have_db_column(:email) }
#     it { should have_db_column(:name) }
#   end
# end
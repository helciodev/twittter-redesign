require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_one_attached(:profile_photo) }
  end

  describe 'associations' do
    it { should have_one_attached(:cover_photo) }
  end

  describe 'columns for user' do
    it { should have_db_column(:name) }
    it { should have_db_column(:full_name) }
    it { should have_db_column(:profile_photo) }
    it { should have_db_column(:cover_photo) }
  end
end

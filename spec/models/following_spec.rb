require 'rails_helper'

RSpec.describe Following, type: :model do
  context 'Association' do
    it { should belong_to(:follower).class_name('User') }
    it { should belong_to(:followee).class_name('User') }
  end

  describe 'columns for following' do
    it { should have_db_column(:follower_id) }
    it { should have_db_column(:followee_id) }
  end
end

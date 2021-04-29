describe Post, type: :model do
  fixtures :users, :posts
  context 'Post is saved' do
    it 'validate content presence' do
      post = posts(:post1)
      post.user = users(:user1)
      expect(post.valid?).to eq true
    end

    it 'validate content length' do
      post = posts(:post1)
      post.user = users(:user1)
      expect(post.valid?).to eq true
    end
  end
  context 'Post is not saved' do
    it 'validate content presence' do
      post = posts(:post3)
      post.user = users(:user1)
      expect(post.valid?).to eq false
    end

    it 'validate content length' do
      post = posts(:post2)
      post.user = users(:user1)
      expect(post.valid?).to eq false
    end
  end

  describe 'associations for opinion' do
    it { should belong_to(:user) }
  end

  describe 'columns for opinion' do
    it { should have_db_column(:content) }
  end

end
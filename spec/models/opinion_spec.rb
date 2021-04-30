describe Opinion, type: :model do
  fixtures :users, :opinions
  context 'Opinion is saved' do
    it 'validate content presence' do
      opinion = opinions(:opinionOne)
      opinion.user = users(:one)
      expect(opinion.valid?).to eq true
    end

    it 'validate content length' do
      opinion = opinions(:opinionOne)
      opinion.user = users(:one)
      expect(opinion.valid?).to eq true
    end
  end
  context 'opinion is not saved' do
    it 'validate content presence' do
      opinion = opinions(:opinionThree)
      opinion.user = users(:one)
      expect(opinion.valid?).to eq false
    end

    it 'validate content length' do
      opinion = opinions(:opinionTwo)
      opinion.user = users(:one)
      expect(opinion.valid?).to eq false
    end
  end

  describe 'associations for opinion' do
    it { should belong_to(:user) }
  end

  describe 'columns for opinion' do
    it { should have_db_column(:content) }
  end
end

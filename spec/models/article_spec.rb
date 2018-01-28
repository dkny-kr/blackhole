require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Validation' do
    let!(:user) { FactoryBot.create(:user) }

    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:title) }
    it '정상적인 url 이면 저장 가능하다.' do
      article = Article.new(user: user, title: 'TEST', url: 'http://880322.com')
      expect(article.valid?).to be_truthy
    end
    it 'url가 정상적이지 않으면 저장되지 않는다.' do
      article = Article.new(user_id: user, title: 'abcdefg', url: '1234')
      expect(article.valid?).to be_falsey
    end
  end

  describe 'Association' do
    it { should belong_to(:user) }
  end
end

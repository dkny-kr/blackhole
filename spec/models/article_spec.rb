require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Validation' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:url) }
    it { should validate_presence_of(:title) }
  end
end

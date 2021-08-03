require 'rails_helper'

RSpec.describe Song, type: :model do
  describe 'relationships' do
    it { should have_many(:sections) }
    it { should belong_to(:user) }
  end
end

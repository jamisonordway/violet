require 'rails_helper'

RSpec.describe Section, type: :model do
  describe 'relationships' do
    it { should have_many(:progressions) }
    it { should belong_to(:song) }
  end
end

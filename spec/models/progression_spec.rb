require 'rails_helper'

RSpec.describe Progression, type: :model do
  describe 'relationships' do
    it { should belong_to(:section) }
  end
end

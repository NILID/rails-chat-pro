require 'rails_helper'

RSpec.describe Room, type: :model do
  let(:room) { build(:room) }

  context 'should have' do
    it 'name' do
      room.name = nil
      expect(room.valid?).to be false
      expect(room.errors[:name]).not_to be_empty
    end
  end
end

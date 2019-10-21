require 'rails_helper'

RSpec.describe Room, type: :model do
  let(:user) { build(:user) }

  context 'should have' do
    it 'username' do
      user.username = nil
      expect(user.valid?).to be false
      expect(user.errors[:username]).not_to be_empty
    end

    it 'uniq username' do
      user.save!
      new_user = build(:user, username: user.username)
      expect(new_user.valid?).to be false
      expect(new_user.errors[:username]).not_to be_empty
    end
  end
end
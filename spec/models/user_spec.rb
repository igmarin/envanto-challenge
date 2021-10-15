require 'rails_helper'

RSpec.describe User, type: :model do
  context 'custom validation' do
    describe 'email validation' do
      it 'is a valid domain' do
        user = User.new(email: 'hi@envato.com', password: '12345678')
        expect(user).to be_valid
        user.save
        expect(User.count).to be(1)
      end
    end
  end
end

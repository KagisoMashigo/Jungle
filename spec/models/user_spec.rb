require 'rails_helper'

RSpec.describe User, type: :model do

  context 'password match' do
    user = User.new(email: 'test@test.com', password: 'cloud', password_confirmation: 'cloud')
    user.valid?
    it 'password match' do
      expect(user.errors[:password_confirmation]).not_to be_present
    end
  end

  context "password don't match" do
    user = User.new(email: 'test@test.com', password: 'cloud', password_confirmation: 'barret')
    user.valid?
    it "password don't match" do
      expect(user.errors[:password_confirmation]).to be_present
    end
  end

  it 'email must be unique' do
    user = User.new(email: 'test@test.com', password: 'cloud', password_confirmation: 'cloud')
    user.save

    u = User.new(email: 'test@test.com', password: 'cloud', password_confirmation: 'cloud')
    u.save

    expect(u.errors[:email].first).to eq('has already been taken')
  end

  it 'password length less than 5 characters is invalid' do
    user = User.new(email: 'tifa@test.com', password: 'tifa')

    result = user.save

    expect(user).to be(false)
  end

  it 'password length must be at-least 5 characters' do
    user = User.new(email: 'test@test.com', password: 'cloud')

    result = user.save

    expect(result).to be(true)
  end
end
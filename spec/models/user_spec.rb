require 'rails_helper'

RSpec.describe User, type: :model do
  it "requires a name" do
    user = User.new(name:"")
    user.valid?
    expect(user.errors[:name].any?).to eq(true)
  end

  it "requires an email address" do
    user = User.new(email:"")
    user.valid?
    expect(user.errors[:email].any?).to eq(true)
  end

  it "is valid with example attributes" do
    user = User.new(user_attributes)
    expect(user.valid?).to eq(true)
  end

  it "requires a password" do
    user = User.new(password:"")
    user.valid?
    expect(user.errors[:password].any?).to eq(true)
  end

  it "requires a password_confirmation when a password is present" do
    user = User.new(password: "secret", password_confirmation: "")
    user.valid?
    expect(user.errors[:password_confirmation].any?).to eq(true)
  end

  it "requires the password to match the the password_confirmation" do
    user = User.new(password: "secret", password_confirmation: "nomatch")
    user.valid?
    expect(user.errors[:password_confirmation].first).to eq("doesn't match Password")
  end

  it "saves itself with a password and matching password_confirmation" do
    user = User.create!(user_attributes(password: "match", password_confirmation: "match"))
    expect(user.valid?).to eq(true)
  end

  it "accepts properly formatted email addresses" do
    emails = %w[user@example.com user.name@example.com]
    emails.each do |email|
      user = User.new(email: email)
      user.valid?
      expect(user.errors[:email].any?).to eq(false)
    end
  end

  it "rejects improperly formatted email addresses" do
    emails = %w[@ user@ @example.com]
    emails.each do |email|
      user = User.new(email: email)
      user.valid?
      expect(user.errors[:email].any?).to eq(true)
    end
  end

  it "requires a unique email address, case-insensitive" do
    user1 = User.create!(user_attributes)
    user2 = User.new(email: user1.email.upcase)
    user2.valid?
    expect(user2.errors[:email].first).to eq("has already been taken")
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "uniqueness" do 
    before(:each) do
      create(:user)
    end
    
    it { should validate_uniqueness_of(:username) }
    it { should validate_uniqueness_of(:session_token) }
    
  end

  #validations
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:session_token) }

  describe '#password=' do
    #SHOULD BE TAKING in a password 
    #set password digest using bcrypt
    #@password = password
    let(:user) {User.new(username: 'daniel')}

    
    it "sets @password = password" do 
      user.password= "password"
      expect(user.password).to eq("password")
    end

    it "should set user.password_digest" do
      user.password = "password"
      expect(BCrypt::Password.new(user.password_digest).is_password?("password")).to be true
    end
  end

end
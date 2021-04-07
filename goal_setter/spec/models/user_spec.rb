require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    user = User.new(username: 'daniel', session_token: "bkaubyd8lluhdsy")
  end

  #validations
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:session_token) }
  it { should validate_uniqueness_of(:session_token) }

end
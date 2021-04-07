require 'rails_helper'

RSpec.describe User, type: :model do

  #validations
  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username) }
  it { should validate_presence_of(:session_token) }
  it { should validate_uniqueness_of(:session_token) }

end
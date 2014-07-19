require 'spec_helper'

describe User do
  it { should have_secure_password }

  it { should validate_uniqueness_of(:username) }

  it { should validate_presence_of(:username) }

  it { should allow_value('username@gmail.com').for(:email) }

  it { should_not allow_value('username@incomplete').for(:email) }
end

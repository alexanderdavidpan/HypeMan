require 'spec_helper'

describe Artist do
  it { should have_secure_password }

  it { should have_many(:songs) }

  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of(:name) }

  it { should validate_uniqueness_of(:email) }

  it { should validate_presence_of(:email) }

  it { should allow_value('username@gmail.com').for(:email) }

  it { should_not allow_value('username@incomplete').for(:email) }
end

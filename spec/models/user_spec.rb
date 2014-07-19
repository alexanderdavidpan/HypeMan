require 'spec_helper'

describe User do
  it { should have_secure_password }

  it { validate_uniqueness_of(:username) }

  it { validate_presence_of(:username) }
end

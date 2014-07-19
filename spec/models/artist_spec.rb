require 'spec_helper'

describe Artist do
  it { should have_secure_password }

  it { should have_many(:songs) }

  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of(:name) }
end

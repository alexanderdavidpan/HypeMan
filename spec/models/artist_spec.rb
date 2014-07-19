require 'spec_helper'

describe Artist do
  it { should have_secure_password }

  it { should have_many(:songs) }
end

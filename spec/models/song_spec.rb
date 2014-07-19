require 'spec_helper'

describe Song do
  it { should belong_to(:artist) }

  it { should have_many(:favorites) }

  it { should have_many(:users).through(:favorites) }

  it { should validate_presence_of(:title) }
end

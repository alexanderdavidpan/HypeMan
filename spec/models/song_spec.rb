require 'spec_helper'

describe Song do
  it { should belong_to(:artist) }
end

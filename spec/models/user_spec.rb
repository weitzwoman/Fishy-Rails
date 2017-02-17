require 'rails_helper'

describe User do
  it { should have_many(:products) }
  it { should have_many(:comments) }
end

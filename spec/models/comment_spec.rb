require 'rails_helper'

describe Comment do
  it { should belong_to :user }
  it { should belong_to :product }
  it { should validate_presence_of :content }
end

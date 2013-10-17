require 'spec_helper'

describe League do
  it 'creates a new instance given valid attributes' do
    FactoryGirl.create(:league)
  end
end

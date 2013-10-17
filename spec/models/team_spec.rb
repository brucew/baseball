require 'spec_helper'

describe Team do
  it 'creates a new instance given valid attributes' do
    FactoryGirl.create(:team)
  end
end

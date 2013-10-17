require 'spec_helper'

describe Player do
  it 'creates a new instance given valid attributes' do
    FactoryGirl.create(:player)
  end
end
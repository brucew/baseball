require 'spec_helper'

describe Season do
  it 'creates a new instance given valid attributes' do
    FactoryGirl.create(:season)
  end
end

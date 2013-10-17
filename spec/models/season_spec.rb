require 'spec_helper'

describe Season do
  it 'creates a new instance given valid attributes' do
    FactoryGirl.create(:season)
  end

  it 'has to_param' do
    season = FactoryGirl.build(:season, year: '1999')
    season.to_param.should eq '1999'
  end

  it 'has from_param' do
    season = Season.from_param('1998')
    season.year.should eq '1998'
  end

end

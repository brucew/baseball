require 'spec_helper'

describe Player do
  it 'creates a new instance given valid attributes' do
    FactoryGirl.create(:player)
  end

  it 'has singles' do
    player = FactoryGirl.build(:player, hits: 27, doubles: 8, triples: 7, hr: 3)
    player.singles.should eq 9
  end

  it 'has total_bases' do
    player = FactoryGirl.build(:player, hits: 27, doubles: 8, triples: 7, hr: 3)
    player.total_bases.should eq 58
  end

  it 'has slugging_average' do
    player = FactoryGirl.build(:player, at_bats: 137, hits: 27, doubles: 8, triples: 7, hr: 3)
    player.slugging_average.should eq (58.0 / 137.0)
  end

  it 'has on_base_percentage' do
    player = FactoryGirl.build(:player, at_bats: 137, hits: 27, doubles: 8, triples: 7, hr: 3, base_on_balls: 5,
                               hit_by_pitch: 1, sacrifice_flies: 0)
    player.on_base_percentage.should eq (33.0 / 143.0)
  end

  it 'has calculate_avg' do
    player = FactoryGirl.build(:player, at_bats: 137, hits: 27)
    player.send(:calculate_avg).should eq (27.0 / 137.0)
  end

  it 'has calculate_ops' do
    player = FactoryGirl.build(:player, at_bats: 137, hits: 27, doubles: 8, triples: 7, hr: 3, base_on_balls: 5,
                               hit_by_pitch: 1, sacrifice_flies: 0)
    player.send(:calculate_ops).should eq ((58.0 / 137.0) + (33.0 / 143.0))
  end

  it 'calculates avg and ops when saved' do
    player = FactoryGirl.build(:player, at_bats: 137, hits: 27, doubles: 8, triples: 7, hr: 3, base_on_balls: 5,
                               hit_by_pitch: 1, sacrifice_flies: 0)
    player.avg.should eq 0
    player.ops.should eq 0

    player.save
    player.avg.should eq (27.0 / 137.0)
    player.ops.should eq ((58.0 / 137.0) + (33.0 / 143.0))
  end
end
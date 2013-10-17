require 'spec_helper'

describe PlayersHelper do
  describe '#column_sort_tag' do
    it 'returns a DESC column sort tag when the order is column ASC' do
      @order = 'FOO ASC'
      helper.stub(:season_players_path).with(order: 'FOO DESC').and_return('/seasons/1998/players?order=FOO+DESC')
      helper.column_sort_tag('FOO').should eq '<a href="/seasons/1998/players?order=FOO+DESC">FOO</a> <i class="icon-chevron-up"></i>'
    end

    it 'returns a ASC column sort tag when the order is column DESC' do
      @order = 'FOO DESC'
      helper.stub(:season_players_path).with(order: 'FOO ASC').and_return('/seasons/1998/players?order=FOO+ASC')
      helper.column_sort_tag('FOO').should eq '<a href="/seasons/1998/players?order=FOO+ASC">FOO</a> <i class="icon-chevron-down"></i>'
    end

    it 'returns a DESC column sort tag when the order is another column' do
      @order = 'FOO ASC'
      helper.stub(:season_players_path).with(order: 'BAR DESC').and_return('/seasons/1998/players?order=BAR+DESC')
      helper.column_sort_tag('BAR').should eq '<a href="/seasons/1998/players?order=BAR+DESC">BAR</a>'
    end

  end

end
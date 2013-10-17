class Season < ActiveRecord::Base
  has_many :leagues, inverse_of: :season
  has_many :players, inverse_of: :season

  validates :year, presence: true, uniqueness: true

  def to_param
    self.year
  end

  def self.from_param(param)
    Season.where(year: param).first
  end

end
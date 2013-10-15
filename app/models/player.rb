class Player < ActiveRecord::Base
  belongs_to :season, inverse_of: :players
  belongs_to :league
  belongs_to :division
  belongs_to :team, inverse_of: :players

  before_save :calculate_avg, :calculate_ops

  validates :season, :league, :division, :team, presence: true
  validates :surname, :given_name, :position, presence: true
  validates :at_bats, :numericality => { greater_than: 0 }

  def singles
    self.hits - (self.doubles + self.triples + self.hr)
  end

  def total_bases
    self.singles + (2 * self.doubles) + (3 * self.triples) + (4 * self.hr)
  end

  def slugging_average
    self.total_bases.to_f / self.at_bats
  end

  def on_base_percentage
    (self.hits + self.base_on_balls + self.hit_by_pitch).to_f /
        (self.at_bats + self.base_on_balls + self.sacrifice_flies + self.hit_by_pitch)
  end

  private

  def calculate_avg
    self.avg = self.hits.to_f / self.at_bats
  end

  def calculate_ops
    self.ops = self.slugging_average + self.on_base_percentage
  end

end
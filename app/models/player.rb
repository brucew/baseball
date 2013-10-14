class Player < ActiveRecord::Base
  belongs_to :team

  before_validation :calculate_avg, :calculate_ops, if: :is_a_hitter?

  validates :surname, presence: true
  validates :given_name, presence: true
  validates :position, presence: true

  def singles
    self.hits - (self.doubles + self.triples + self.hr)
  end

  def total_bases
    self.singles + (2 * self.doubles) + (3 * self.triples) + (4 * self.hr)
  end

  def slugging_average
    self.is_a_hitter? ? self.total_bases.to_f / self.at_bats : 0
  end

  def on_base_percentage
    self.is_a_hitter? ?
        (self.hits + self.base_on_balls + self.hit_by_pitch).to_f /
            (self.at_bats + self.base_on_balls + self.sacrifice_flies + self.hit_by_pitch)
    : 0
  end

  def is_a_hitter?
    self.at_bats > 0
  end

  private

  def calculate_avg
    self.is_a_hitter? ? self.avg = self.hits.to_f / self.at_bats : 0
  end

  def calculate_ops
    self.ops = self.slugging_average + self.on_base_percentage
  end

end
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
    if self.total_bases and self.at_bats and self.at_bats > 0
      self.total_bases.to_f / self.at_bats
    end
  end

  def on_base_percentage
    if self.hits and self.base_on_balls and self.hit_by_pitch and self.at_bats and self.sacrifice_flies
      (self.at_bats + self.base_on_balls + self.sacrifice_flies + self.hit_by_pitch) > 0
      (self.hits + self.base_on_balls + self.hit_by_pitch).to_f /
          (self.at_bats + self.base_on_balls + self.sacrifice_flies + self.hit_by_pitch)
    end
  end

  def is_a_hitter?
    not self.hits.nil?
  end

  private

  def calculate_avg
    if self.hits and self.at_bats and self.at_bats > 0
      self.avg = self.hits.to_f / self.at_bats
    end
  end

  def calculate_ops
    if self.slugging_average and self.on_base_percentage
      self.ops = self.slugging_average + self.on_base_percentage
    end
  end

end
class Season < ActiveRecord::Base
  has_many :players, inverse_of: :season

  validates :year, presence: true, uniqueness: true

end
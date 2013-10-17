class League < ActiveRecord::Base
  belongs_to :season, inverse_of: :leagues
  has_many :divisions, inverse_of: :league

  validates :name, presence: true, uniqueness: { scope: :season }

end
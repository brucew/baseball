class Team < ActiveRecord::Base
  belongs_to :division, inverse_of: :teams
  has_many :players, inverse_of: :team

  validates :name, presence: true

end
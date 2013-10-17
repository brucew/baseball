class Division < ActiveRecord::Base
  belongs_to :league, inverse_of: :divisions
  has_many :teams, inverse_of: :division

  validates :name, presence: true, uniqueness: { scope: :league }

end
class League < ActiveRecord::Base
  belongs_to :season

  validates :name, presence: true, uniqueness: { scope: :season }

end
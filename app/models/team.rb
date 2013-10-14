class Team < ActiveRecord::Base
  belongs_to :division

  validates :name, presence: true

end
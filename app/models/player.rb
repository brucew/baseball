class Player < ActiveRecord::Base
  belongs_to :team

  validates :surname, presence: true
  validates :given_name, presence: true
  validates :position, presence: true

end
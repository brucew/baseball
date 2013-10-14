class Season < ActiveRecord::Base
  validates :year, presence: true, uniqueness: true

end
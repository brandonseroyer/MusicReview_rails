class Rating < ActiveRecord::Base
  belongs_to :review
  validates :score, :presence => true

end

class Review < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  belongs_to :user
  has_many :comments
  has_many :ratings

  def self.search(query)
    where("genre = ?", "#{query}")
  end

  def average_rating
    sum = 0
    score_length = self.ratings.length
    self.ratings.each do |rating|
      sum += rating.score
    end
    if score_length != 0
      return (sum/score_length).to_f
    end
  end

end

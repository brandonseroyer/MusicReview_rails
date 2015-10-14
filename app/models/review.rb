class Review < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  belongs_to :user
  has_many :comments

  def self.search(query)
    where("genre = ?", "#{query}")
  end

end

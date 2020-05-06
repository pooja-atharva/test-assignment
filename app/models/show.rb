class Show < ApplicationRecord
  belongs_to :channel
  has_many :favorite_shows
  has_many :favorited_by, through: :favorite_shows, source: :user
  
  validates :name, :time, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end

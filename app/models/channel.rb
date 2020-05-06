class Channel < ApplicationRecord
  has_many :shows
  validates :name, :time, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # Favorite shows of user
  has_many :favorite_shows
  has_many :favorites, through: :favorite_shows, source: :show
end

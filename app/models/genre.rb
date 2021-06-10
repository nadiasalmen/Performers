class Genre < ApplicationRecord
  has_many :show_genres
  
  validates :name, presence: true
end

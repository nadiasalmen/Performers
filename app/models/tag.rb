class Tag < ApplicationRecord
  # associations
  has_many :show_genres

  # validations
  validates :name, presence: true
end

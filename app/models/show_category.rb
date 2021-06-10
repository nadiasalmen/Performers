class ShowCategory < ApplicationRecord
  # associations
  belongs_to :show

  # active storage associations
  has_one_attached :image

  #validations
  validates :name, presence: true
end

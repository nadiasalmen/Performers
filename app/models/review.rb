class Review < ApplicationRecord
  # associations
  belongs_to :show
  belongs_to :user

  # validations
  validates :content, presence: true
end

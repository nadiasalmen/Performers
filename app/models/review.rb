class Review < ApplicationRecord
  belongs_to :user
  belongs_to :show

  validates :content, presence: true
end

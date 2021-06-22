class YoutubeVideo < ApplicationRecord
  # associations
  belongs_to :show

  # validations
  validates :url, presence: true
end

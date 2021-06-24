class YoutubeVideo < ApplicationRecord
  # associations
  belongs_to :show

  # validations
  validates :video_url, presence: true
end

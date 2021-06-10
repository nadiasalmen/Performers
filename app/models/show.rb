class Show < ApplicationRecord
  belongs_to :user
  has_one :category
  has_many :enquiries
  has_many :reviews
  has_many :faqs
  has_many :show_event_categories
  has_many :show_genres
  has_many :youtube_videos
end

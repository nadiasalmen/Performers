class Show < ApplicationRecord
  # associations
  belongs_to :user

  has_one :show_category

  has_many :enquiries
  has_many :faqs
  has_many :reviews
  has_many :show_event_categories
  has_many :show_tags
  has_many :youtube_videos

  # active storage associations
  has_many_attached :images
  has_many_attached :videos

  # validations
  validates :name, presence: true
  validates :description, presence: true
end

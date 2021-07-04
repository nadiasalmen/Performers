class Show < ApplicationRecord
  # associations
  belongs_to :user

  has_many :show_categories
  has_many :enquiries, dependent: :destroy
  has_many :faqs, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :show_event_categories, dependent: :destroy
  has_many :show_tags, dependent: :destroy
  has_many :youtube_videos, dependent: :destroy

  # active storage associations
  has_many_attached :images, dependent: :destroy
  has_many_attached :videos, dependent: :destroy

  # validations
  validates :name, presence: true
  validates :description, presence: true
end

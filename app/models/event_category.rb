class EventCategory < ApplicationRecord
  # associations
  has_many :show_event_categories

  # active storage associations
  has_one_attached :image
end

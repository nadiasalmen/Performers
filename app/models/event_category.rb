class EventCategory < ApplicationRecord
  has_many :event_performance_categories
  has_many :events

  validates :name, uniqueness: true
end

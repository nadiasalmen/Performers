class EventCategory < ApplicationRecord
  validates :name, uniqueness: true
end

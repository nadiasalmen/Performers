class EventCategory < ApplicationRecord
  has_many: :event_show_categories
end

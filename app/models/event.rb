class Event < ApplicationRecord
  belongs_to :performance
  belongs_to :user
  belongs_to :event_category
end

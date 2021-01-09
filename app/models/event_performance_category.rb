class EventPerformanceCategory < ApplicationRecord
  belongs_to :EventCategory
  belongs_to :PerformanceCategory
end

class PerformanceCategory < ApplicationRecord
  has_many :event_performance_categories

  validates :name, uniqueness: true
end

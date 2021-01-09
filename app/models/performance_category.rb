class PerformanceCategory < ApplicationRecord
  has_many :event_performance_categories
  has_many :performances

  validates :name, uniqueness: true
end

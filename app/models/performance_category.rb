class PerformanceCategory < ApplicationRecord
  validates :name, uniqueness: true
end

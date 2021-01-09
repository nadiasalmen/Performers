class Performance < ApplicationRecord
  belongs_to :user
  belongs_to :performance_category
end

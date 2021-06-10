class Show < ApplicationRecord
  belongs_to :user
  has_many :show_event_categories
end

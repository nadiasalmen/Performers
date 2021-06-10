class Show < ApplicationRecord
  belongs_to :user
  has_one :category
  has_many :enquiries
  has_many :show_event_categories
end

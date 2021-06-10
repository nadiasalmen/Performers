class ShowEventCategory < ApplicationRecord
  belongs_to :event_category
  belongs_to :show
end

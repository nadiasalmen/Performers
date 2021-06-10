class ShowEventCategory < ApplicationRecord
  #associations
  belongs_to :event_category
  belongs_to :show
end

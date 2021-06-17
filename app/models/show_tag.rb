class ShowTag < ApplicationRecord
  # associations
  belongs_to :tag
  belongs_to :show
end

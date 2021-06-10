class ShowGenre < ApplicationRecord
  # associations
  belongs_to :genre
  belongs_to :show
end

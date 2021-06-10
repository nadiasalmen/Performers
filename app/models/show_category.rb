class ShowCategory < ApplicationRecord
  # associations
  belongs_to :show

  #validations
  validates :name, presence: true
end

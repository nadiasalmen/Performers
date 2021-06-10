class ShowCategory < ApplicationRecord
  belongs_to :show
  validates :name, presence: true
end

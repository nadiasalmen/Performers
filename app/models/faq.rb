class Faq < ApplicationRecord
  # associations
  belongs_to :show

  # validations
  validates :question, presence: true
end

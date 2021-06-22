class Enquiry < ApplicationRecord
  # associations
  belongs_to :show
  belongs_to :user

  # validations
  validates :question, presence: true
end

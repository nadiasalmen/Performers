class Enquiry < ApplicationRecord
  validates :question, presence: true
end

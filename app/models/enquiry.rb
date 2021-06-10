class Enquiry < ApplicationRecord
  belongs_to :user
  belongs_to :show

  validates :question, presence: true
end

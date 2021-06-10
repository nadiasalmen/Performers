class Faq < ApplicationRecord
  belongs_to :show
  
  validates :question, presence: true
end

class EventCategory < ApplicationRecord
  # associations
  has_many :show_event_categories

  # validations
  validates :name, inclusion: { in: ['Bar - Restó', 'Social', 'Corporativo', 'Evento Cultural', 'Otros'] }
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true

  # active storage associations
  has_one_attached :image
end

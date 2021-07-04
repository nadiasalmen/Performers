class ShowCategory < ApplicationRecord
  # active storage associations
  has_one_attached :image

  #associations
  has_many :shows

  # validations
  validates :name, inclusion: { in: ['Acústico', 'Magia', 'Banda', 'Infantil', 'Amenización', 'Baile', 'DJ', 'Animación', 'Stand Up', 'Otros'] }
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
end

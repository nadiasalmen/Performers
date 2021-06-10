class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # associations
  has_many :enquiries
  has_many :reviews
  has_many :shows

  # active storage associations
  has_one_attached :avatar
end

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

  # validations
  validates :role, presence: true
  validates :role, inclusion: {in: ["Performer", "Contratante"]}
  validates :email, presence: true
  validates :email, uniqueness: true
  #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true
  validate :password_requirements
  validates :phone_number, presence: true

  private

  def password_requirements
    rules = {
      " debe contener al menos una letra minúscula"  => /[a-z]+/,
      " debe contener al menos una letra mayúscula"  => /[A-Z]+/,
      " debe contener al menos un número"             => /\d+/,
      " debe contener al menos un caracter especial" => /[^A-Za-z0-9]+/
    }

    rules.each do |message, regex|
      errors.add( :password, message ) unless password.match( regex )
    end
  end
end

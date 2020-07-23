class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :words
  has_many :comments
  has_many :favorites
  has_many :favorite_words, through: :favorites, source: :word
  
  validates :name, presence: true, length: { maximum: 10 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true, length: { minimum: 6 }
end

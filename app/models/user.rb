class User < ApplicationRecord
  has_many :tweets, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, uniqueness: true, length: { in: 1...15 }

end
class User < ApplicationRecord
  validates :username, presence: true, uniqueness:true, length: {in: 2..15}
  validates :password, presence: true, length: {in: 8..30}
  validates :email, presence: true, uniqueness: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable, :trackable, :confirmable

  has_many :posts
end

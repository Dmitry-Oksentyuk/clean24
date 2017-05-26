class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders

  validates :name, presence: true, length: {maximum: 35}
  validates :phone_user, uniqueness: true
  validates :phone_user, presence: true
end

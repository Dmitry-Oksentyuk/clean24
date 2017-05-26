class Order < ActiveRecord::Base
  belongs_to :user

  validates :phone, presence: true
  validates :city, presence: true, length: {maximum: 20}
  validates :street, presence: true, length: {maximum: 20}
  validates :house, presence: true
end

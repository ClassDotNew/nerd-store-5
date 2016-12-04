class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_products

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, presence: true
  validates :username, uniqueness: true


end

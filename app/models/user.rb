class User < ActiveRecord::Base

  has_secure_password

  has_many :locations
  has_many :items

  validates :email,
    uniqueness: true,
    presence: true


  validates :password,
    presence: true,
    length: {minimum: 5}

  validates :location,
    presence: true


end
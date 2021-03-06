class Car < ActiveRecord::Base
  
  validates :name, presence: true,uniqueness: true, length: {minimum:2,maximum:25}
  has_many :offer_cars
  has_many :offers, through: :offer_cars
  
  has_many :appusers
end
class Vehicle < ApplicationRecord
  has_many :vehicle_washes
  has_many :washes, through: :vehicle_washes
end

class Vehicle < ApplicationRecord
  has_many :vehicle_washes
  has_many :washes, through: :vehicle_washes
  validates_presence_of :vehicle_type, :license_plate
end

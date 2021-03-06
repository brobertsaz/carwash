class Wash < ApplicationRecord
  has_one :sales_transaction
  has_many :vehicle_washes
  has_many :vehicles, through: :vehicle_washes
  accepts_nested_attributes_for :vehicles
end

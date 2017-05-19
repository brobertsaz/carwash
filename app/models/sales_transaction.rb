class SalesTransaction < ApplicationRecord
  belongs_to :wash
  validates_presence_of :total_amount
end

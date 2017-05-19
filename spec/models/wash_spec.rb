require 'rails_helper'

RSpec.describe Wash, type: :model do
  it { should have_one(:sales_transaction) }
  it { should have_many(:vehicles).through(:vehicle_washes) }
end

require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  it { should have_many(:washes).through(:vehicle_washes) }
  it { should validate_presence_of(:vehicle_type) }
  it { should validate_presence_of(:license_plate) }
end

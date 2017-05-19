require 'rails_helper'

RSpec.describe VehicleWash, type: :model do
  it { should belong_to(:vehicle) }
  it { should belong_to(:wash) }
end

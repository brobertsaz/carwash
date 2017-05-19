require 'rails_helper'

RSpec.describe SalesTransaction, type: :model do
  it { should belong_to(:wash) }
  it { should validate_presence_of(:total_amount) }
end

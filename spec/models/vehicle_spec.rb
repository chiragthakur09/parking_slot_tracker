# == Schema Information
#
# Table name: vehicles
#
#  id                  :bigint           not null, primary key
#  registration_number :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
# Indexes
#
#  index_vehicles_on_registration_number  (registration_number) UNIQUE
#
require 'rails_helper'

RSpec.describe Vehicle, type: :model do
  context 'Validation Test' do
    #let(:vehicle) {build(:vehicle)}
    
    it "must have a valid registration number" do
      vehicle =  FactoryBot.create(:vehicle)
      expect(vehicle).to be_valid
    end
    
    it "This should not create for invalid reg number" do
      vehicle =  FactoryBot.create(:invalid_vehicle)
      expect(vehicle).not_to be_valid
    end
    
  end
end

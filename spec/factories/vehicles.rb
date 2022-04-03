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
FactoryBot.define do
  
  factory :vehicle do
    registration_number {"AL-22-XL-2020"}    
  end

  factory :invalid_vehicle, class: Vehicle do
    registration_number {"L-22-XL-2020"}    
  end
end

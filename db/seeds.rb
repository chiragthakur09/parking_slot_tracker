# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BookingDetail.all.destroy_all
Slot.all.destroy_all
EntryPoint.all.destroy_all
Location.all.destroy_all
Vehicle.all.destroy_all
# (1..1000).to_a.each do |record_item|
#     if (record_item % 250 != 0)
#         Slot.create(slot: record_item)
#     else
#         EntryPoint.create(point: record_item)
#     end
# end
(1..20).to_a.each do |record_item|
    if (record_item % 5 != 0)
        Slot.create(slot: record_item)
    else
        EntryPoint.create(point: record_item)
    end
end
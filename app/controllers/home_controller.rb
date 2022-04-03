class HomeController < ApplicationController
  def index
    @locations = Location.all.order(:position)
  end

  def book_slot
    @entry_points = EntryPoint.all
    #Location.all.order(:position).where(locatable_type: "Slot").pluck(:position)
  end

  def allot_a_slot
    vehicle = Vehicle.find_or_create_by(registration_number: params[:vehicle_registration_number])
    entry_point_location = EntryPoint.find(params[:entry_point_id]).location.position
    slot_location = get_closest_lot_location(get_all_vacant_slots_locations, entry_point_location)
    slot_id = Location.find_by_position(slot_location).locatable_id
    slot = Slot.find(slot_id)
    if slot.vacant?
      slot.update(status: "booked")
      BookingDetail.create(
        vehicle_id: vehicle.id,
        entry_point_id: params[:entry_point_id],
        slot_id: slot_id,
        booked_at: DateTime.now
      )
    else 
      #error
    end
    #book if Slot.find(slot_id).booked?
  end
  
  def show_logs
    @booking_details = BookingDetail.all
  end

  private
  def get_closest_lot_location(all_slots_locations, entry_point_location)
    return nil if all_slots_locations.empty?
    all_slots_locations.min_by  { |e| e <= entry_point_location ? [0, entry_point_location-e] : [1, e-entry_point_location] }
  end

  def get_all_vacant_slots_locations
    return  Slot.all.vacant.map { |slot| slot.location.position}
  end


end

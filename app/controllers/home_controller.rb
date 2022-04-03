class HomeController < ApplicationController
  def index
    @locations = Location.all.order(:position)
  end

  def book_slot
    @entry_points = EntryPoint.all
  end

  def allot_a_slot
    vehicle = Vehicle.find_or_create_by(registration_number: params[:vehicle_registration_number])
    redirect_to(home_book_slot_path) if already_booked(vehicle)
    binding.pry
    entry_point_location = EntryPoint.find(params[:entry_point_id]).location.position
    slot_location = get_closest_lot_location(get_all_vacant_slots_locations, entry_point_location)
    slot_id = Location.find_by_position(slot_location).locatable_id
    slot = Slot.find(slot_id)
    if slot.vacant?
      slot.update(status: "booked")
      booking = BookingDetail.create(
        vehicle_id: vehicle.id,
        entry_point_id: params[:entry_point_id],
        slot_id: slot_id,
        booked_at: DateTime.now
      )
      redirect_to home_show_booking_url(id: booking.id)
      # if booking
      #   format.html { redirect_to home_show_booking_path(booking.id), notice: "Slot was successfully created." }
      # else
      #   format.html { render :new, status: :unprocessable_entity }
      # end
    else 
      #error
    end
    #book if Slot.find(slot_id).booked?
  end
  
  def reset_whole_app
    BookingDetail.all.destroy_all
    Slot.all.destroy_all
    EntryPoint.all.destroy_all
    Location.all.destroy_all
    (1..20).to_a.each do |record_item|
        if (record_item % 5 != 0)
            Slot.create(slot: record_item)
        else
            EntryPoint.create(point: record_item)
        end
    end
    redirect_to home_index_path
  end

  def show_booking
    @booking_detail = BookingDetail.find(params[:id])
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

  def already_booked(vehicle)
    #return BookingDetail.exists?(vehicle_id: vehicle.id,booked_at: Date.today.all_day)
    BookingDetail.exists?(vehicle_id: vehicle.id,booked_at: Date.today.prev_day.all_day)
  end
end

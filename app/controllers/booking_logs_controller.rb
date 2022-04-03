class BookingLogsController < ApplicationController
  before_action :set_booking_log, only: %i[ show edit update destroy ]

  # GET /booking_logs or /booking_logs.json
  def index
    @booking_logs = BookingLog.all
  end

  # GET /booking_logs/1 or /booking_logs/1.json
  def show
  end

  # GET /booking_logs/new
  def new
    @booking_log = BookingLog.new
  end

  # GET /booking_logs/1/edit
  def edit
  end

  # POST /booking_logs or /booking_logs.json
  def create
    @booking_log = BookingLog.new(booking_log_params)

    respond_to do |format|
      if @booking_log.save
        format.html { redirect_to booking_log_url(@booking_log), notice: "Booking log was successfully created." }
        format.json { render :show, status: :created, location: @booking_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booking_logs/1 or /booking_logs/1.json
  def update
    respond_to do |format|
      if @booking_log.update(booking_log_params)
        format.html { redirect_to booking_log_url(@booking_log), notice: "Booking log was successfully updated." }
        format.json { render :show, status: :ok, location: @booking_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @booking_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booking_logs/1 or /booking_logs/1.json
  def destroy
    @booking_log.destroy

    respond_to do |format|
      format.html { redirect_to booking_logs_url, notice: "Booking log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking_log
      @booking_log = BookingLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_log_params
      params.require(:booking_log).permit(:slot_id, :vehicle_id)
    end
end

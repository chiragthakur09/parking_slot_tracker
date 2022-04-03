class EntryPointsController < ApplicationController
  before_action :set_entry_point, only: %i[ show edit update destroy ]

  # GET /entry_points or /entry_points.json
  def index
    @entry_points = EntryPoint.all
  end

  # GET /entry_points/1 or /entry_points/1.json
  def show
  end

  # GET /entry_points/new
  def new
    @entry_point = EntryPoint.new
  end

  # GET /entry_points/1/edit
  def edit
  end

  # POST /entry_points or /entry_points.json
  def create
    @entry_point = EntryPoint.new(entry_point_params)

    respond_to do |format|
      if @entry_point.save
        format.html { redirect_to entry_point_url(@entry_point), notice: "Entry point was successfully created." }
        format.json { render :show, status: :created, location: @entry_point }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entry_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entry_points/1 or /entry_points/1.json
  def update
    respond_to do |format|
      if @entry_point.update(entry_point_params)
        format.html { redirect_to entry_point_url(@entry_point), notice: "Entry point was successfully updated." }
        format.json { render :show, status: :ok, location: @entry_point }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @entry_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entry_points/1 or /entry_points/1.json
  def destroy
    @entry_point.destroy

    respond_to do |format|
      format.html { redirect_to entry_points_url, notice: "Entry point was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry_point
      @entry_point = EntryPoint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entry_point_params
      params.require(:entry_point).permit(:point, :location_id)
    end
end

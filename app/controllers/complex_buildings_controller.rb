class ComplexBuildingsController < ApplicationController
  before_action :set_building, only: %i[show edit update destroy]

  # GET /buildings/new
  def new
    @building = ComplexBuilding.new(home: Home.new)
  end

  # GET /buildings/1/edit
  def edit; end

  # POST /buildings or /buildings.json
  def create
    @building = ComplexBuilding.new(building_params)

    respond_to do |format|
      if @building.save
        format.html { redirect_to @building, notice: 'Building was successfully created.' }
        format.json { render :show, status: :created, location: @building }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings/1 or /buildings/1.json
  def update
    respond_to do |format|
      if @building.update(building_params)
        format.html { redirect_to @building, notice: 'Building was successfully updated.' }
        format.json { render :show, status: :ok, location: @building }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @building.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_building
    @building = ComplexBuilding.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def building_params
    params.require(:complex_building)
          .permit(:units, home_attributes: [:owner, :address, :sqmt, :price, { pictures: [] }])
  end
end

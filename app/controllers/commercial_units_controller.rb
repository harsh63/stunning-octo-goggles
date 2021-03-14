class CommercialUnitsController < ApplicationController
  before_action :set_commercial_unit, only: %i[show edit update destroy]

  # GET /commercial_units/new
  def new
    @commercial_unit = CommercialUnit.new(home: Home.new)
  end

  # GET /commercial_units/1/edit
  def edit; end

  # POST /commercial_units or /commercial_units.json
  def create
    @commercial_unit = CommercialUnit.new(commercial_unit_params)

    respond_to do |format|
      if @commercial_unit.save
        format.html { redirect_to @commercial_unit, notice: 'commercial unit was successfully created.' }
        format.json { render :show, status: :created, location: @commercial_unit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commercial_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commercial_units/1 or /commercial_units/1.json
  def update
    respond_to do |format|
      if @commercial_unit.update(commercial_unit_params)
        format.html { redirect_to @commercial_unit, notice: 'commercial unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @commercial_unit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commercial_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_commercial_unit
    @commercial_unit = CommercialUnit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def commercial_unit_params
    params.require(:commercial_unit)
          .permit(:shops, :parking, home_attributes: [:owner, :address, :sqmt, :price, { pictures: [] }])
  end
end

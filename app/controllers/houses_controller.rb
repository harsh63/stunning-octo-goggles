class HousesController < ApplicationController
  before_action :set_house, only: %i[show edit update destroy]

  # GET /houses/new
  def new
    @house = House.new(home: Home.new)
  end

  def show; end

  # GET /houses/1/edit
  def edit; end

  # POST /houses or /houses.json
  def create
    @house = House.new(house_params)

    respond_to do |format|
      if @house.save
        format.html { redirect_to @house, notice: 'House was successfully created.' }
        format.json { render :show, status: :created, location: @house }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /houses/1 or /houses/1.json
  def update
    respond_to do |format|
      if @house.update(house_params)
        format.html { redirect_to @house, notice: 'House was successfully updated.' }
        format.json { render :show, status: :ok, location: @house }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @house.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_house
    @house = House.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def house_params
    params.require(:house).permit(:rooms, :floors, :air_cond,
                                  home_attributes: [:owner, :address, :sqmt, :price, { pictures: [] }])
  end
end

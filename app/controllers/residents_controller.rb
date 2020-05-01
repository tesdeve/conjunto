class ResidentsController < ApplicationController  
  before_action :set_property
  before_action :set_group
  before_action :authenticate_user!
  before_action :set_resident, only: [:show, :edit, :update, :destroy]

  # GET /residents
  # GET /residents.json
  def index
    @residents = @property.residents
  end

  # GET /residents/1
  # GET /residents/1.json
  def show
  end

  # GET /residents/new
  def new
    @resident = Resident.new
  end

  # GET /residents/1/edit
  def edit
  end

  # POST /residents
  # POST /residents.json
  def create
    @resident = Resident.new(resident_params)

    respond_to do |format|
      if @resident.save
        format.html { redirect_to property_resident_path(@property, @resident), notice: 'Resident was successfully created.' }
        format.json { render :show, status: :created, location: @resident }
      else
        format.html { render :new }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /residents/1
  # PATCH/PUT /residents/1.json
  def update
    respond_to do |format|
      if @resident.update(resident_params)
        format.html { redirect_to property_resident_path(@property, @resident), notice: 'Resident was successfully updated.' }
        format.json { render :show, status: :ok, location: @resident }
      else
        format.html { render :edit }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /residents/1
  # DELETE /residents/1.json
  def destroy
    @resident.destroy
    respond_to do |format|
      format.html { redirect_to property_residents_path(@property), notice: 'Resident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resident
      @resident = Resident.find(params[:id])
    end

    def set_property
      @property = Property.find(params[:property_id])
    end

    def set_group
       @property = Property.find(params[:property_id])
      @group = @property.group_id
    end

    # Only allow a list of trusted parameters through.
    def resident_params
      params.require(:resident).permit(:principal, :property_id)
    end
end

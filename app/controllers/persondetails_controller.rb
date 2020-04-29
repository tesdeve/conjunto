class PersondetailsController < ApplicationController
  before_action :set_persondetail, only: [:show, :edit, :update, :destroy]

  # GET /persondetails
  # GET /persondetails.json
  def index
    @persondetails = Persondetail.all
  end

  # GET /persondetails/1
  # GET /persondetails/1.json
  def show
  end

  # GET /persondetails/new
  def new
    @persondetail = Persondetail.new
  end

  # GET /persondetails/1/edit
  def edit
  end

  # POST /persondetails
  # POST /persondetails.json
  def create
    @persondetail = Persondetail.new(persondetail_params)

    respond_to do |format|
      if @persondetail.save
        format.html { redirect_to @persondetail, notice: 'Persondetail was successfully created.' }
        format.json { render :show, status: :created, location: @persondetail }
      else
        format.html { render :new }
        format.json { render json: @persondetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persondetails/1
  # PATCH/PUT /persondetails/1.json
  def update
    respond_to do |format|
      if @persondetail.update(persondetail_params)
        format.html { redirect_to @persondetail, notice: 'Persondetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @persondetail }
      else
        format.html { render :edit }
        format.json { render json: @persondetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persondetails/1
  # DELETE /persondetails/1.json
  def destroy
    @persondetail.destroy
    respond_to do |format|
      format.html { redirect_to persondetails_url, notice: 'Persondetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persondetail
      @persondetail = Persondetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def persondetail_params
      params.require(:persondetail).permit(:personable_id, :personable_type, :nombre, :apellido, :edad, :cedula, :huella_digital)
    end
end

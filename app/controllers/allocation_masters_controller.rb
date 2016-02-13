class AllocationMastersController < ApplicationController
  before_action :set_allocation_master, only: [:show, :edit, :update, :destroy]

  # GET /allocation_masters
  # GET /allocation_masters.json
  def index
    @allocation_masters = AllocationMaster.all
  end

  # GET /allocation_masters/1
  # GET /allocation_masters/1.json
  def show
  end

  # GET /allocation_masters/new
  def new
    @allocation_master = AllocationMaster.new
  end

  # GET /allocation_masters/1/edit
  def edit
  end

  # POST /allocation_masters
  # POST /allocation_masters.json
  def create
    @allocation_master = AllocationMaster.new(allocation_master_params)

    respond_to do |format|
      if @allocation_master.save
        format.html { redirect_to @allocation_master, notice: 'Allocation master was successfully created.' }
        format.json { render :show, status: :created, location: @allocation_master }
      else
        format.html { render :new }
        format.json { render json: @allocation_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocation_masters/1
  # PATCH/PUT /allocation_masters/1.json
  def update
    respond_to do |format|
      if @allocation_master.update(allocation_master_params)
        format.html { redirect_to @allocation_master, notice: 'Allocation master was successfully updated.' }
        format.json { render :show, status: :ok, location: @allocation_master }
      else
        format.html { render :edit }
        format.json { render json: @allocation_master.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocation_masters/1
  # DELETE /allocation_masters/1.json
  def destroy
    @allocation_master.destroy
    respond_to do |format|
      format.html { redirect_to allocation_masters_url, notice: 'Allocation master was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation_master
      @allocation_master = AllocationMaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allocation_master_params
      params.require(:allocation_master).permit(:allocation_name, :allocation_input_id)
    end
end

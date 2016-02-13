class AllocationInputsController < ApplicationController
  before_action :set_allocation_input, only: [:show, :edit, :update, :destroy]

  # GET /allocation_inputs
  # GET /allocation_inputs.json
  def index
    @allocation_inputs = AllocationInput.all
  end

  # GET /allocation_inputs/1
  # GET /allocation_inputs/1.json
  def show
  end

  # GET /allocation_inputs/new
  def new
    @allocation_input = AllocationInput.new
  end

  # GET /allocation_inputs/1/edit
  def edit
  end

  # POST /allocation_inputs
  # POST /allocation_inputs.json
  def create
    @allocation_input = AllocationInput.new(allocation_input_params)

    respond_to do |format|
      if @allocation_input.save
        format.html { redirect_to @allocation_input, notice: 'Allocation input was successfully created.' }
        format.json { render :show, status: :created, location: @allocation_input }
      else
        format.html { render :new }
        format.json { render json: @allocation_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocation_inputs/1
  # PATCH/PUT /allocation_inputs/1.json
  def update
    respond_to do |format|
      if @allocation_input.update(allocation_input_params)
        format.html { redirect_to @allocation_input, notice: 'Allocation input was successfully updated.' }
        format.json { render :show, status: :ok, location: @allocation_input }
      else
        format.html { render :edit }
        format.json { render json: @allocation_input.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocation_inputs/1
  # DELETE /allocation_inputs/1.json
  def destroy
    @allocation_input.destroy
    respond_to do |format|
      format.html { redirect_to allocation_inputs_url, notice: 'Allocation input was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation_input
      @allocation_input = AllocationInput.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allocation_input_params
      params.require(:allocation_input).permit(:input_date, :product_name, :units, :allocation_basis, :date_dim_id, :product_id)
    end
end

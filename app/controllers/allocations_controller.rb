class AllocationsController < ApplicationController
  before_action :set_allocation, only: [:show, :edit, :update, :destroy]

  # GET /allocations
  # GET /allocations.json
  def index
    @allocations = Allocation.all
  end

  def generate

    @ai = AllocationInput.where(:product_id => params[:product_ids], :allocation_basis => params[:allocation_basis])

    @ai.each do |ai|
      ai = Allocation.new(:product_id => ai.product_id, :allocation_input_id => ai.id, :allocation_units => ai.units, :allocation_date => ai.input_date, :date_dim_id => ai.date_dim_id, :allocation_name => params[:allocation_name], :status => "not_calculated")
      ai.save
    end

    a = Allocation.select(:date_dim_id, :allocation_units).where(:status => 'not_calculated').group(:date_dim_id).sum(:allocation_units)

    a.each do |k,v|
      my_alloc = Allocation.where(date_dim_id: k, :status => 'not_calculated')
      sum_units = Allocation.select(:allocation_units).where(date_dim_id: k, :status => "not_calculated").sum(:allocation_units)
      my_alloc.update_all(allocation_base: sum_units, status: 'base_generated')

      base = Allocation.base_generated

      base.each do |factor|
        factor.update_attributes(allocation_factor: (factor.allocation_units / factor.allocation_base), status: "calculated")
      end
    end
    
    redirect_to allocations_url
  
  end

  # GET /allocations/1
  # GET /allocations/1.json
  def show
  end

  # GET /allocations/new
  def new
    @allocation = Allocation.new
  end

  # GET /allocations/1/edit
  def edit
  end

  # POST /allocations
  # POST /allocations.json
  def create
    @allocation = Allocation.new(allocation_params)

    respond_to do |format|
      if @allocation.save
        format.html { redirect_to @allocation, notice: 'Allocation was successfully created.' }
        format.json { render :show, status: :created, location: @allocation }
      else
        format.html { render :new }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allocations/1
  # PATCH/PUT /allocations/1.json
  def update
    respond_to do |format|
      if @allocation.update(allocation_params)
        format.html { redirect_to @allocation, notice: 'Allocation was successfully updated.' }
        format.json { render :show, status: :ok, location: @allocation }
      else
        format.html { render :edit }
        format.json { render json: @allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allocations/1
  # DELETE /allocations/1.json
  def destroy
    @allocation.destroy
    respond_to do |format|
      format.html { redirect_to allocations_url, notice: 'Allocation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allocation
      @allocation = Allocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allocation_params
      params.require(:allocation).permit(:allocation_master_id, :product_id, :allocation_input_id, :date_dim_id, :allocation_factor, :allocation_date, :allocation_name, :allocation_basis)
    end
end

class DateDimsController < ApplicationController
  before_action :set_date_dim, only: [:show, :edit, :update, :destroy]

  # GET /date_dims
  # GET /date_dims.json
  def index
    @date_dims = DateDim.all
  end

  # GET /date_dims/1
  # GET /date_dims/1.json
  def show
  end

  # GET /date_dims/new
  def new
    @date_dim = DateDim.new
  end

  # GET /date_dims/1/edit
  def edit
  end

  # POST /date_dims
  # POST /date_dims.json
  def create
    @date_dim = DateDim.new(date_dim_params)

    respond_to do |format|
      if @date_dim.save
        format.html { redirect_to @date_dim, notice: 'Date dim was successfully created.' }
        format.json { render :show, status: :created, location: @date_dim }
      else
        format.html { render :new }
        format.json { render json: @date_dim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_dims/1
  # PATCH/PUT /date_dims/1.json
  def update
    respond_to do |format|
      if @date_dim.update(date_dim_params)
        format.html { redirect_to @date_dim, notice: 'Date dim was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_dim }
      else
        format.html { render :edit }
        format.json { render json: @date_dim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_dims/1
  # DELETE /date_dims/1.json
  def destroy
    @date_dim.destroy
    respond_to do |format|
      format.html { redirect_to date_dims_url, notice: 'Date dim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_dim
      @date_dim = DateDim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_dim_params
      params.require(:date_dim).permit(:input_date, :beginning_period, :ending_period)
    end
end

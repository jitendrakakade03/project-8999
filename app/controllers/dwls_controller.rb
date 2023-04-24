class DwlsController < ApplicationController
  before_action :set_dwl, only: %i[ show update destroy ]

  # GET /dwls
  # GET /dwls.json
  def index
    @dwls = Dwl.all
  end

  # GET /dwls/1
  # GET /dwls/1.json
  def show
  end

  # POST /dwls
  # POST /dwls.json
  def create
    @dwl = Dwl.new(dwl_params)

    if @dwl.save
      render :show, status: :created, location: @dwl
    else
      render json: @dwl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dwls/1
  # PATCH/PUT /dwls/1.json
  def update
    if @dwl.update(dwl_params)
      render :show, status: :ok, location: @dwl
    else
      render json: @dwl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dwls/1
  # DELETE /dwls/1.json
  def destroy
    @dwl.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dwl
      @dwl = Dwl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dwl_params
      params.require(:dwl).permit(:ffddll)
    end
end

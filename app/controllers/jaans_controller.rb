class JaansController < ApplicationController
  before_action :set_jaan, only: %i[ show update destroy ]

  # GET /jaans
  # GET /jaans.json
  def index
    @jaans = Jaan.all
  end

  # GET /jaans/1
  # GET /jaans/1.json
  def show
  end

  # POST /jaans
  # POST /jaans.json
  def create
    @jaan = Jaan.new(jaan_params)

    if @jaan.save
      render :show, status: :created, location: @jaan
    else
      render json: @jaan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jaans/1
  # PATCH/PUT /jaans/1.json
  def update
    if @jaan.update(jaan_params)
      render :show, status: :ok, location: @jaan
    else
      render json: @jaan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jaans/1
  # DELETE /jaans/1.json
  def destroy
    @jaan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jaan
      @jaan = Jaan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jaan_params
      params.require(:jaan).permit(:love)
    end
end

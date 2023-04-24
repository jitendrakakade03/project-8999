class LlsController < ApplicationController
  before_action :set_ll, only: %i[ show update destroy ]

  # GET /lls
  # GET /lls.json
  def index
    @lls = Ll.all
  end

  # GET /lls/1
  # GET /lls/1.json
  def show
  end

  # POST /lls
  # POST /lls.json
  def create
    @ll = Ll.new(ll_params)

    if @ll.save
      render :show, status: :created, location: @ll
    else
      render json: @ll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lls/1
  # PATCH/PUT /lls/1.json
  def update
    if @ll.update(ll_params)
      render :show, status: :ok, location: @ll
    else
      render json: @ll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lls/1
  # DELETE /lls/1.json
  def destroy
    @ll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ll
      @ll = Ll.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ll_params
      params.require(:ll).permit(:ll)
    end
end

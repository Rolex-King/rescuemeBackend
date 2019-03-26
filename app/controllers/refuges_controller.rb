class RefugesController < ApplicationController
  before_action :set_refuge, only: [:show, :update, :destroy]

  # GET /refuges
  def index
    @refuges = Refuge.all

    render json: @refuges
  end

  # GET /refuges/1
  def show
    render json: @refuge
  end

  # POST /refuges
  def create
    @refuge = Refuge.new(refuge_params)

    if @refuge.save
      render json: @refuge, status: :created, location: @refuge
    else
      render json: @refuge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /refuges/1
  def update
    if @refuge.update(refuge_params)
      render json: @refuge
    else
      render json: @refuge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /refuges/1
  def destroy
    @refuge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refuge
      @refuge = Refuge.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def refuge_params
      params.require(:refuge).permit(:name, :city, :adress, :capacity)
    end
end

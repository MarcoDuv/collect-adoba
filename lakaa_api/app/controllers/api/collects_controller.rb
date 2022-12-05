class Api::CollectsController < ApplicationController
  before_action :set_collect, only: %i[ show update destroy ]

  # GET /collects
  def index
    @collects = Collect.all

    render json: @collects
  end

  # GET /collects/1
  def show
    render json: @collect
  end

  # POST /collects
  def create
    @collect = Collect.new(collect_params)

    if @collect.save
      render json: @collect, status: :created, location: @collect
    else
      render json: @collect.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collects/1
  def update
    if @collect.update(collect_params)
      render json: @collect
    else
      render json: @collect.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collects/1
  def destroy
    @collect.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collect
      @collect = Collect.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collect_params
      params.require(:collect).permit(:asso, :date, :weight, :nb_ppl)
    end
end

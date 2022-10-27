class GrettingsController < ApplicationController
  before_action :set_gretting, only: %i[show update destroy]

  # GET /grettings
  def index
    @grettings = Gretting.order('RANDOM()').first.to_json

    render json: @grettings
  end

  # GET /grettings/1
  def show
    render json: @gretting
  end

  # POST /grettings
  def create
    @gretting = Gretting.new(gretting_params)

    if @gretting.save
      render json: @gretting, status: :created, location: @gretting
    else
      render json: @gretting.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grettings/1
  def update
    if @gretting.update(gretting_params)
      render json: @gretting
    else
      render json: @gretting.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grettings/1
  def destroy
    @gretting.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gretting
    @gretting = Gretting.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gretting_params
    params.require(:gretting).permit(:message, :author)
  end
end

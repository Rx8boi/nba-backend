class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show, :update, :destroy]

  # GET /athletes
  def index
    @athletes = Athlete.all

    render json: @athletes
  end

  # GET /athletes/1
  def show
    render json: @athlete
  end

  # POST /athletes
  def create
    @athlete = Athlete.new(athlete_params)

    if @athlete.save
      render json: @athlete, status: :created, location: @athlete
    else
      render json: @athlete.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /athletes/1
  def update
    if @athlete.update(athlete_params)
      render json: @athlete
    else
      render json: @athlete.errors, status: :unprocessable_entity
    end
  end

  # DELETE /athletes/1
  def destroy
    @athlete.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete
      @athlete = Athlete.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def athlete_params
      params.require(:athlete).permit(:name, :fur_color, :personality, :partner, :image, :team_id)
    end
end

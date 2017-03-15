class Api::HouseholdsController < ApplicationController
  def index
    @households = House.includes(:people, :cars).all
  end

  def show
    @household = House.includes(:people, :cars).find(params[:id])
  end

  def create
    @household = House.new(household_params)

    if @household.save
      render :show, status: :created
    else
      render json: @household.errors, status: :unprocessable_entity
    end
  end
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def household_params
      params.require(:household).permit(
        :id,
        :address,
        :address2,
        :city,
        :state,
        :postal_code,
        people_attributes: [
          :id,
          :first_name,
          :last_name,
          :email,
          :age,
          :gender
        ],
        cars_attributes: [
           :year,
           :make_id,
           :make_display,
           :model,
           :license_plate
        ]
      )
    end
end

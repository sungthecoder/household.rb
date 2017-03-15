class Api::HouseholdsController < ApplicationController
  def index
    @households = House.includes(:people, :cars).all
  end

  def show
    @household = House.includes(:people, :cars).find(params[:id])
  end
end

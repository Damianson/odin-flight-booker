class FlightsController < ApplicationController
  def index
    if params[:departure_airport_id].present? && params[:arrival_airport_id].present? && params[:flight_date].present? && params[:passenger_count].present?
      @flights = Flight.search(params[:departure_airport_id], params[:arrival_airport_id], params[:flight_date], params[:passenger_count])
    else 
      @flights = []
    end
  end

end

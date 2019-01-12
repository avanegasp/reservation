class Api::V1::ReservationsController < ApplicationController

  def index
    reservations = Guest.all
    render json:reservations
  end

  def create
    reservation = Parking.new(reservation_params)
    if reservation.save
      render json: reservation
    else
      render json: { errors: reservation.errors }, status: 422
    end
  end

  private
  def reservation_params
    params.require(:reservation).permit(:name, :last_name, :loyalty_member, :room_id)
  end

end

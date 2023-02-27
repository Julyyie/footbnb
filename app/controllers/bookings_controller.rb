class BookingsController < ApplicationController

  def new
    @bookings = Booking.all

  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to dashboard_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    #if status decline booking.destroy status pending en db parce que pas encore accépté
  end

  private

  def player_params
    params.require(:booking).permit(:user_id, :player_id, :rent_status)
  end

end

class BookingsController < ApplicationController

  def new
    @bookings = Booking.all

  end

  def create
    @player = Player.find(params[:player_id])
    @booking = Booking.new(booking_params)
    # @booking.player = @player

    if @booking.save
      redirect_to booking_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    #if status decline booking.destroy status pending en db parce que pas encore accépté
  end

  private

  def booking_params
    params.require(:booking).permit(:rent_start, :rent_ending)
  end

end

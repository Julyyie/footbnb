class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @player = Player.find(params[:player_id])
    @booking = Booking.new(booking_params)
    @booking.player = @player
    @booking.user = current_user
    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    #if status decline booking.destroy status pending en db parce que pas encore accepté
  end

  private

  def booking_params
    params.require(:booking).permit(:rent_start, :rent_ending)
  end
end

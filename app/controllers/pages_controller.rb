class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard


    # ceux que je mets en location
    @my_players = @current_user.players
    @my_bookings = @current_user.bookings



  end

end

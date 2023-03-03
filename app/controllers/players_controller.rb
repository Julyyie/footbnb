class PlayersController < ApplicationController
skip_before_action :authenticate_user!, only: :index

# before_action :set_player, only: [:show]
#skip before action only [show index]

def index
  @recent_players = Player.last(3)

  if params[:query].present?
    sql_query = <<~SQL
      players.name ILIKE :query
    SQL
    @players = Player.where(sql_query, query: "%#{params[:query]}%")
  else
    @players = Player.all
  end

end


  def show
    @player = Player.find(params[:id])
    @booking = Booking.new
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.create(player_params)
    @player.user = current_user
    # player associé au user
    if @player.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player.update(player_params)
    redirect_to player_path(@player)
  end

  def destroy
    @player.destroy
    redirect_to player_path, status: :see_other
  end


  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :club, :position, :rating, :age, :description, :price, :strong_foot)
  end
end

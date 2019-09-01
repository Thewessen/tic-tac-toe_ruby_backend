class GamesController < ApplicationController
  def show
    render json: Game.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    game = Game.new

    if game.save
      redirect_to game
    else
      # This should return an error code!
      render text: 'not updated'
    end
  end

  def update
    game = Game.find(params[:id])
    game.update(games_params)
  end

  def destroy
    Game.find(params[:id]).delete
  end

  private
    def games_params
      params.require(:data).permit(:id, attributes: :boardstate)
    end
end

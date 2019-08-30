class GamesController < ApplicationController
  def show
    # game = Game.find(params[:id])
    # render json: { status: 400, data: Game.find(params[:id]) }
    render 'show'
  end

  def new
    game = Game.new
    game.save
    redirect_to game
  end

  def edit
  end

  def create
    game = Game.new(games_params)

    if game.save
      redirect_to game
    else
      # This should return an error code!
      render text: 'not updated'
    end
  end

  def update
    game = Game.find(params[:id])

    if game.update(games_params)
      redirect_to game
    else
      # This should return an error code!
      render text: 'not updated'
    end
  end

  def destroy
    Game.find(params[:id]).delete
  end

  private
    def games_params
      params.require(:game).permit(:board_state)
    end
end

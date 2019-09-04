class GamesController < ApplicationController
  def index
    render json: Game.all
  end

  def show
    game = Game.find(params[:id])
    render json: game
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

    nicknames_params.each do |nickname|
      unless game.nicknames.exists?nickname[:id]
        game.nicknames<<Nickname.find(nickname[:id])
      end
    end
    game.update(games_params)
  end

  def destroy
    Game.find(params[:id]).delete
  end

  private
    def games_params
      params.require(:data).permit(:id, attributes: :boardstate)
    end

    def nicknames_params
      # Shouldn't their be a better solution here?
      # Maybe some gem with a deserrializer like jsonapi-rb?
      params.require(:data).permit(relationships: { nicknames: { data: [:id] } })
            .dig(:relationships, :nicknames, :data)
    end
end

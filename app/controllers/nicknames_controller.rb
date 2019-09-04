class NicknamesController < ApplicationController
  def index
    render json: Nickname.all
  end
end

class API::V1::NoCsrfController < ApplicationController
  protect_from_forgery with: :null_session

  responde_to :json
end

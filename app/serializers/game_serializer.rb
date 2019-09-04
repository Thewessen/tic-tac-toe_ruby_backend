class GameSerializer < ActiveModel::Serializer
  attributes :id, :boardstate

  has_many :nicknames
end

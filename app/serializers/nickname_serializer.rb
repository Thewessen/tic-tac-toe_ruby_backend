class NicknameSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :games
end

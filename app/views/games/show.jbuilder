json.data do
  json.id @game.id
  json.type 'game'
  json.attributes do
    json.boardstate @game.boardstate
    json.created_at @game.created_at
    json.updated_at @game.updated_at
  end
end

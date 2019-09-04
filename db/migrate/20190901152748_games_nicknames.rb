class GamesNicknames < ActiveRecord::Migration[6.0]
  def change
    create_table :games_nicknames, id: false do |t|
      t.belongs_to :game
      t.belongs_to :nickname
    end
  end
end

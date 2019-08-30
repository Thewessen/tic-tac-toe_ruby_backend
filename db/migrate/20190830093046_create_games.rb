class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.json :board_state, :default => ActiveSupport::JSON.encode({ state: [['', '', ''],['', '', ''],['', '', '']] })

      t.timestamps
    end
  end
end

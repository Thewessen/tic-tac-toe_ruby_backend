class Game < ApplicationRecord
  # Add a JSON specific test?
  validates :board_state, presence: true
end

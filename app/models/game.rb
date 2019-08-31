class Game < ApplicationRecord
  # Add a string specific test?
  validates :boardstate, presence: true
end

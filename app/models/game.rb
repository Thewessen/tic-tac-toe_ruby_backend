class Game < ApplicationRecord
  # Add a string specific test?
  validates :boardstate, presence: true

  has_and_belongs_to_many :nicknames
end

class CharacterAppearance < ApplicationRecord
  belongs_to :character
  belongs_to :movie
  belongs_to :serie
end

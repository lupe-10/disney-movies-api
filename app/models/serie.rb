class Serie < ApplicationRecord
  has_many :character_appearances, class_name: 'character_appearance', foreign_key: 'reference_id'
  validate :title, :creation_date, :gender, presence: true
end

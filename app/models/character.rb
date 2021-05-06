class Character < ApplicationRecord
  has_many :character_appearances, class_name: 'character_appearance', foreign_key: 'reference_id'
  validates :name, :weight, :age, :history, presence: true
end

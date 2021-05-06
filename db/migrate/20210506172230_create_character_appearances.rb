class CreateCharacterAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :character_appearances do |t|
      t.references :movie
      t.references :character
      t.references :serie

      t.timestamps
    end
  end
end

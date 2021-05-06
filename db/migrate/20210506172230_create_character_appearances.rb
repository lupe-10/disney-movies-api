class CreateCharacterAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :character_appearances do |t|
      t.reference :movie
      t.reference :character
      t.reference :serie

      t.timestamps
    end
  end
end

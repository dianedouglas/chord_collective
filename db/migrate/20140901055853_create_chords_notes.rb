class CreateChordsNotes < ActiveRecord::Migration
  def change
    create_table :chords_notes do |t|
    	t.column :chord_id, :int
    	t.column :note_id, :int
    end
  end
end

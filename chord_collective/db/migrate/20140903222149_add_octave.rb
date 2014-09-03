class AddOctave < ActiveRecord::Migration
  def change
    add_column :notes, :octave, :int
  end
end

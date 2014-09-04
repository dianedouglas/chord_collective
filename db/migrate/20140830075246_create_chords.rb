class CreateChords < ActiveRecord::Migration
  def change
    create_table :chords do |t|
    	t.column :name, :string
    end
  end
end

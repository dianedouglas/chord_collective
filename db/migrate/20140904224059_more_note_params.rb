class MoreNoteParams < ActiveRecord::Migration
  def change
    add_column :notes, :identifier, :string
    add_column :notes, :instrument, :string
    add_column :notes, :loudness, :integer
  end
end

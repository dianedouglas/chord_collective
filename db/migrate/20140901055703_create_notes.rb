class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
    	t.column :name, :string
    end
  end
end

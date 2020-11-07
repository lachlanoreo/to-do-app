class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.string :priority
      t.integer :time_to_complete
      t.boolean :complete

      t.timestamps
    end
  end
end

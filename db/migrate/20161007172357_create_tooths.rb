class CreateTooths < ActiveRecord::Migration
  def change
    create_table :tooths do |t|
      t.integer :side_id
      t.string :tooth_type
      t.integer :roots_number
      t.integer :canals_number

      t.timestamps null: false
    end
  end
end

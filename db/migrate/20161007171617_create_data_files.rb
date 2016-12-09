class CreateDataFiles < ActiveRecord::Migration
  def change
    create_table :data_files do |t|
      t.integer :patient_id
      t.string :name
      t.text :description
      t.timestamp :date_added

      t.timestamps null: false
    end
  end
end

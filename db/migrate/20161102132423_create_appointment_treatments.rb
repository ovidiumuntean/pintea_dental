class CreateAppointmentTreatments < ActiveRecord::Migration
  def change
    create_table :appointment_treatments do |t|
      t.integer :tooth_treatment_id
      t.integer :appointment_id

      t.timestamps null: false
    end
  end
end

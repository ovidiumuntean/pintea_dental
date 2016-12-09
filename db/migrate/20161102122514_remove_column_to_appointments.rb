class RemoveColumnToAppointments < ActiveRecord::Migration
  def change
    remove_column :appointments, :tooth_treatment_id, :integer
  end
end

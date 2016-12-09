class RenameTableToAppointmentTratments < ActiveRecord::Migration
  def change
	rename_table :appointment_tratments, :appointment_treatments
  end
end

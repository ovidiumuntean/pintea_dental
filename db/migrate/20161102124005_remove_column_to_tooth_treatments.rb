class RemoveColumnToToothTreatments < ActiveRecord::Migration
  def change
    remove_column :tooth_treatments, :date_treatead, :date
  end
end

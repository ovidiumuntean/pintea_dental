class RemoveColumnToPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :registration_date, :datetime
  end
end

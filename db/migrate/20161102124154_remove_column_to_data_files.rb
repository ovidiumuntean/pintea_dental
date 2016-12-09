class RemoveColumnToDataFiles < ActiveRecord::Migration
  def change
    remove_column :data_files, :date_added, :datetime
  end
end

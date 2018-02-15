class RemoveUserIdFromPatients < ActiveRecord::Migration
  def change
    remove_column :patients, :user_id, :integer
  end
end

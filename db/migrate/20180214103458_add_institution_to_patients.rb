class AddInstitutionToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :institution, :string
  end
end

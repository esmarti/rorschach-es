class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :given_name
      t.string :last_name
      t.string :phone
      t.integer :age
      t.boolean :sex
      t.boolean :isPatient
      t.integer :user_id

      t.timestamps
    end
  end
end

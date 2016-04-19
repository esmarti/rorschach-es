class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :code
      t.integer :numZones

      t.timestamps
    end
  end
end

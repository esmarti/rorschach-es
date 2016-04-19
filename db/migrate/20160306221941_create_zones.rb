class CreateZones < ActiveRecord::Migration
  def change
    create_table :zones do |t|
      t.integer :coord_x
      t.integer :coord_y
      t.integer :width
      t.integer :height
      t.integer :z_index
      t.string :bg_image

      t.timestamps
    end
  end
end

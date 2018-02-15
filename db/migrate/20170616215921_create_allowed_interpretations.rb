class CreateAllowedInterpretations < ActiveRecord::Migration
  def change
    create_table :allowed_interpretations do |t|
      t.string :name
      t.string :description
      t.string :direction
      t.string :formal_quality

      t.timestamps
    end
  end
end

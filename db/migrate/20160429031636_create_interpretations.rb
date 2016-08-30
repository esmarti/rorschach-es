class CreateInterpretations < ActiveRecord::Migration
  def change
    create_table :interpretations do |t|
      t.string :direction
      t.boolean :formalQuality

      t.timestamps
    end
  end
end

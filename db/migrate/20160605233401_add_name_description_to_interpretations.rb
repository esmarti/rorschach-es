class AddNameDescriptionToInterpretations < ActiveRecord::Migration
  def change
    add_column :interpretations, :name, :string
    add_column :interpretations, :description, :string
  end
end

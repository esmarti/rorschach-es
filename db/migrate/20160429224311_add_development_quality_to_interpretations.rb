class AddDevelopmentQualityToInterpretations < ActiveRecord::Migration
  def change
    add_column :interpretations, :development_quality, :string
  end
end

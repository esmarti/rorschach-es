class ChangeTypeFormalQualityToString < ActiveRecord::Migration
  def change
  	rename_column :interpretations, :formalQuality, :formal_quality
  	change_column :interpretations, :formal_quality, :string
  end
end
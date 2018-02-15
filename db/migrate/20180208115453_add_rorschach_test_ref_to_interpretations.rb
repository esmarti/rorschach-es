class AddRorschachTestRefToInterpretations < ActiveRecord::Migration
  def change
    add_reference :interpretations, :rorschachTest, index: true
  end
end

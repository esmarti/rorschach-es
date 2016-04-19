class AddSheetReferencesToAreas < ActiveRecord::Migration
  def change
    add_reference :areas, :sheet, index: true
  end
end

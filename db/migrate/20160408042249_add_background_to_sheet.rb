class AddBackgroundToSheet < ActiveRecord::Migration
  def change
    add_column :sheets, :background, :string
  end
end

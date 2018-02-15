class CreateRorschachTests < ActiveRecord::Migration
  def change
    create_table :rorschach_tests do |t|

      t.timestamps
    end
  end
end

class AddUserRefToRorschachTests < ActiveRecord::Migration
  def change
    add_reference :rorschach_tests, :user, index: true
  end
end

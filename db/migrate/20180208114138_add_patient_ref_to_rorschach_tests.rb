class AddPatientRefToRorschachTests < ActiveRecord::Migration
  def change
    add_reference :rorschach_tests, :patient, index: true
  end
end

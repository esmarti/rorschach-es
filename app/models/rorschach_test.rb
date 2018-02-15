class RorschachTest < ActiveRecord::Base
	belongs_to :user
	belongs_to :patient
	has_many :interpretations
end

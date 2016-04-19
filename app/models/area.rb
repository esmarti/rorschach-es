class Area < ActiveRecord::Base
	belongs_to :sheet
	has_and_belongs_to_many :zones
end

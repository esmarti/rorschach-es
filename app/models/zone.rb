class Zone < ActiveRecord::Base
	has_and_belongs_to_many :areas
end
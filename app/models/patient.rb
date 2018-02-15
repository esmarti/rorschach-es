class Patient < ActiveRecord::Base
	has_many :rorschachTests
	has_many :users, through: :rorschachTests
end

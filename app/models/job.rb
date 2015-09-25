class Job < ActiveRecord::Base
	belongs_to :user

	def self.sort
    "Sorted!"
  end
end

class Profile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :about_me, :dob, :gender, :hobbies, :native_place, :present_place
	
	def self.genders
		[ ['Male', 'm'], ['Female', 'f'] ]
  end

end

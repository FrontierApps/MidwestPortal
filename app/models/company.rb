class Company < ActiveRecord::Base
	has_many :locations, dependent: :destroy
	validates :company, presence: true,
						:uniqueness => true
	

end

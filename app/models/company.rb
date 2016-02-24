class Company < ActiveRecord::Base
	has_many :locations, dependent: :destroy
	validates :company, presence: true,
						:uniqueness => true
  default_scope {order('company ASC')}
	filterrific(
    default_filter_params: { },
    available_filters: [
      
      :search_query
    ]
  )
  scope :search_query, -> (company) { where("company like ?", "#{company}%")}



end

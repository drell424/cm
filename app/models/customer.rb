class Customer < User
	has_one :user
	has_many :projects
    
end
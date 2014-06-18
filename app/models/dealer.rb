class Dealer < User
	has_one :user
	has_many :quotes

	
    
end